<?xml version='1.0'?>

<!--********************************************************************
Copyright 2018 Robert A. Beezer

This file is part of PreTeXt.

PreTeXt is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 2 or version 3 of the
License (at your option).

PreTeXt is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with PreTeXt.  If not, see <http://www.gnu.org/licenses/>.
*********************************************************************-->

<!-- Conveniences for classes of similar elements -->
<!DOCTYPE xsl:stylesheet [
    <!ENTITY % entities SYSTEM "./entities.ent">
    %entities;
]>

<!-- Identify as a stylesheet -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
    xmlns:xml="http://www.w3.org/XML/1998/namespace"
>
<xsl:import href="./core/pretext-latex.xsl" />
<xsl:template match="book" mode="titleps-style">
    \newpagestyle{ia}{
        \sethead[\thepage][][Chapter\ \thechapter: \chaptertitle]
        {\thesection\ \sectiontitle}{}{\thepage}
        \headrule
        \setfoot[Introduction to Algebra][\thepage][]
        {}{\thepage}{Dalton Ma}
        \footrule
    }
    \pagestyle{ia}
</xsl:template>
<xsl:param name="latex.preamble.early">
    <xsl:text>\usepackage{newpxtext}&#xa;</xsl:text>
    <xsl:text>\usepackage{skak}&#xa;</xsl:text>
    <xsl:text>\usepackage[scaled=0.92]{helvet}&#xa;</xsl:text>
    <xsl:text>\usepackage[T1]{fontenc}&#xa;</xsl:text>
    <xsl:text>\usepackage{cabin}</xsl:text>
    <xsl:text>\usepackage{fontawesome5}&#xa;</xsl:text>
    <xsl:text>\usepackage[Glenn]{fncychap}</xsl:text>
</xsl:param>

<xsl:template match="&EXAMPLE-LIKE;" mode="tcb-style">
    <xsl:text>enhanced,</xsl:text>
    <xsl:text>breakable,</xsl:text>
    <xsl:text>frame hidden,</xsl:text>
    <xsl:text>parbox=false,</xsl:text>
    <xsl:text>fonttitle=\sffamily\bfseries,</xsl:text>
    <xsl:text>borderline west={1pt}{0mm}{DarkOrchid},</xsl:text>
    <xsl:text>borderline south={1pt}{0mm}{DarkOrchid},</xsl:text>
    <xsl:text>coltitle=white,</xsl:text>
    <xsl:text>colback=white,</xsl:text>
    <xsl:text>attach boxed title to top left={xshift=0mm},</xsl:text>
    <xsl:text>boxed title style={colback=DarkOrchid, sharp corners, colframe=DarkOrchid},</xsl:text>
    <xsl:text>boxed title size=title,</xsl:text>
    <xsl:text>after skip=1em,</xsl:text>
    <xsl:text>fonttitle={\bfseries},</xsl:text>
    <xsl:text>before skip=1em,</xsl:text>
    <xsl:text>overlay unbroken and last={
        \node[text=white, align=right, rounded corners, fill=DarkOrchid, xshift=-4mm, minimum height=6mm, anchor=east] at (frame.south east) {\faStar};
    }</xsl:text>
</xsl:template>

<xsl:template match="&DEFINITION-LIKE;" mode="tcb-style">
    <xsl:text>enhanced,</xsl:text>
    <xsl:text>breakable,</xsl:text>
    <xsl:text>frame hidden,</xsl:text>
    <xsl:text>parbox=false,</xsl:text>
    <xsl:text>borderline west={1pt}{0mm}{NavyBlue},</xsl:text>
    <xsl:text>borderline south={1pt}{0mm}{NavyBlue},</xsl:text>
    <xsl:text>coltitle=white,</xsl:text>
    <xsl:text>colback=white,</xsl:text>
    <xsl:text>attach boxed title to top left={xshift=0mm},</xsl:text>
    <xsl:text>boxed title style={colback=NavyBlue, sharp corners, colframe=NavyBlue},</xsl:text>
    <xsl:text>boxed title size=title,</xsl:text>
    <xsl:text>after skip=1em,</xsl:text>
    <xsl:text>before skip=1em,</xsl:text>
    <xsl:text>fonttitle={\bfseries},</xsl:text>

    <xsl:text>overlay unbroken and last={
        \node[text=white, align=right, rounded corners, fill=NavyBlue, xshift=-4mm, minimum height=6mm, anchor=east] at (frame.south east) {\faBookOpen};
    }</xsl:text>
</xsl:template>

<xsl:template match="&THEOREM-LIKE;" mode="tcb-style">
    <xsl:text>enhanced,</xsl:text>
    <xsl:text>breakable,</xsl:text>
    <xsl:text>frame hidden,</xsl:text>
    <xsl:text>parbox=false,</xsl:text>
    <xsl:text>borderline west={1pt}{0mm}{PineGreen},</xsl:text>
    <xsl:text>coltitle=white,</xsl:text>
    <xsl:text>colback=white,</xsl:text>
    <xsl:text>attach boxed title to top left={xshift=0mm},</xsl:text>
    <xsl:text>boxed title style={colback=PineGreen, sharp corners, colframe=PineGreen},</xsl:text>
    <xsl:text>boxed title size=title,</xsl:text>
    <xsl:text>after skip=1em,</xsl:text>
    <xsl:text>before skip=1em,</xsl:text>
    <xsl:text>fonttitle={\bfseries},</xsl:text>

    <xsl:text>overlay unbroken and last={
        \node[text=white, align=right, rounded corners, fill=PineGreen, xshift=-4mm, minimum height=6mm, anchor=east] at (frame.south east) {\faDna};
    }</xsl:text>
</xsl:template>

<xsl:template match="&PROJECT-LIKE;" mode="tcb-style">
    <xsl:text>enhanced,</xsl:text>
    <xsl:text>breakable,</xsl:text>
    <xsl:text>frame hidden,</xsl:text>
    <xsl:text>parbox=false,</xsl:text>
    <xsl:text>borderline west={1pt}{0mm}{Rhodamine},</xsl:text>
    <xsl:text>borderline south={1pt}{0mm}{Rhodamine},</xsl:text>
    <xsl:text>coltitle=white,</xsl:text>
    <xsl:text>colback=white,</xsl:text>
    <xsl:text>attach boxed title to top left={xshift=0mm},</xsl:text>
    <xsl:text>boxed title style={colback=Rhodamine, sharp corners, colframe=Rhodamine},</xsl:text>
    <xsl:text>boxed title size=title,</xsl:text>
    <xsl:text>after skip=1em,</xsl:text>
    <xsl:text>before skip=1em,</xsl:text>
    <xsl:text>fonttitle={\bfseries},</xsl:text>

    <xsl:text>overlay unbroken and last={
        \node[text=white, align=right, rounded corners, fill=Rhodamine, xshift=-4mm, minimum height=6mm, anchor=east] at (frame.south east) {\faMicroscope};
    }</xsl:text>
</xsl:template>

<xsl:param name="latex.geometry" select="'margin=1in'" />

<xsl:template match="&REMARK-LIKE;" mode="tcb-style">
    <xsl:text>enhanced,</xsl:text>
    <xsl:text>fonttitle={\textsf{\bfseries\itshape\large}},</xsl:text>
    <xsl:text>breakable,</xsl:text>
    <xsl:text>frame hidden,</xsl:text>
    <xsl:text>parbox=false,</xsl:text>
    <xsl:text>borderline={1pt}{0mm}{Orange},</xsl:text>
    <xsl:text>coltitle=black,</xsl:text>
    <xsl:text>colback=white,</xsl:text>
    <xsl:text>attach boxed title to top left={xshift=5mm,yshift=-\tcboxedtitleheight/2-1mm,yshifttext=-2mm},</xsl:text>
    <xsl:text>boxed title style={frame hidden, colback=white},</xsl:text>
    <xsl:text>boxed title size=title,</xsl:text>
    <xsl:text>after skip=1em,</xsl:text>
    <xsl:text>before skip=1em,</xsl:text>
    <xsl:text>fonttitle={\bfseries},</xsl:text>
    <xsl:text>overlay unbroken and last={
        \node[text=white, align=right, rounded corners, fill=Orange, xshift=-4mm, minimum height=6mm, anchor=east] at (frame.south east) {\faStickyNote};
    }</xsl:text>
</xsl:template>

<xsl:template match="exercise" mode="tcb-style">
    <xsl:text>enhanced,</xsl:text>
    <xsl:text>breakable,</xsl:text>
    <xsl:text>frame hidden,</xsl:text>
    <xsl:text>parbox=false,</xsl:text>
    <xsl:text>borderline west={1pt}{0mm}{VioletRed},</xsl:text>
    <xsl:text>borderline south={1pt}{0mm}{VioletRed},</xsl:text>
    <xsl:text>coltitle=white,</xsl:text>
    <xsl:text>colback=white,</xsl:text>
    <xsl:text>attach boxed title to top left={xshift=0mm},</xsl:text>
    <xsl:text>boxed title style={colback=VioletRed, sharp corners, colframe=VioletRed},</xsl:text>
    <xsl:text>boxed title size=title,</xsl:text>
    <xsl:text>after skip=1em,</xsl:text>
    <xsl:text>before skip=1em,</xsl:text>
    <xsl:text>fonttitle={\bfseries},</xsl:text>
    <xsl:text>overlay unbroken and last={
        \node[text=white, align=right, rounded corners, fill=VioletRed, xshift=-4mm, minimum height=6mm, anchor=east] at (frame.south east) {\faChalkboard};
    }</xsl:text>
</xsl:template>

<xsl:template match="warning" mode="tcb-style">
    <xsl:text>enhanced,</xsl:text>
    <xsl:text>breakable,</xsl:text>
    <xsl:text>frame hidden,</xsl:text>
    <xsl:text>parbox=false,</xsl:text>
    <xsl:text>borderline={1pt}{0mm}{Red},</xsl:text>
    <xsl:text>coltitle=red,</xsl:text>
    <xsl:text>colback=white,</xsl:text>
    <xsl:text>attach boxed title to top left={xshift=5mm,yshift=-\tcboxedtitleheight/2-1mm,yshifttext=-2mm},</xsl:text>
    <xsl:text>boxed title style={frame hidden, colback=white},</xsl:text>
    <xsl:text>boxed title size=title,</xsl:text>
    <xsl:text>after skip=1em,</xsl:text>
    <xsl:text>before skip=1em,</xsl:text>
    <xsl:text>fonttitle={\bfseries},</xsl:text>

    <xsl:text>overlay unbroken and last={
        \node[text=white, align=right, rounded corners, fill=Red, xshift=-4mm, minimum height=6mm, anchor=east] at (frame.south east) {\faBiohazard};
    }</xsl:text>
</xsl:template>

<xsl:template match="observation" mode="tcb-style">
    <xsl:text>enhanced,</xsl:text>
    <xsl:text>breakable,</xsl:text>
    <xsl:text>frame hidden,</xsl:text>
    <xsl:text>parbox=false,</xsl:text>
    <xsl:text>borderline={1pt}{0mm}{Salmon},</xsl:text>
    <xsl:text>coltitle=Salmon,</xsl:text>
    <xsl:text>colback=white,</xsl:text>
    <xsl:text>attach boxed title to top left={xshift=5mm,yshift=-\tcboxedtitleheight/2-1mm,yshifttext=-2mm},</xsl:text>
    <xsl:text>boxed title style={frame hidden, colback=white},</xsl:text>
    <xsl:text>boxed title size=title,</xsl:text>
    <xsl:text>after skip=1em,</xsl:text>
    <xsl:text>before skip=1em,</xsl:text>
    <xsl:text>fonttitle={\bfseries},</xsl:text>
    <xsl:text>title=Important!,</xsl:text>
    <xsl:text>overlay unbroken and last={
        \node[text=white, align=right, rounded corners, fill=Salmon, xshift=-4mm, minimum height=6mm, anchor=east] at (frame.south east) {\faBell};
    }</xsl:text>
</xsl:template>

<xsl:template match="fact" mode="tcb-style">
    <xsl:text>enhanced,</xsl:text>
    <xsl:text>breakable,</xsl:text>
    <xsl:text>frame hidden,</xsl:text>
    <xsl:text>parbox=false,</xsl:text>
    <xsl:text>borderline west={1pt}{0mm}{Gold},</xsl:text>
    <xsl:text>coltitle=white,</xsl:text>
    <xsl:text>colback=white,</xsl:text>
    <xsl:text>attach boxed title to top left={xshift=0mm},</xsl:text>
    <xsl:text>boxed title style={colback=Gold, sharp corners, colframe=Gold},</xsl:text>
    <xsl:text>boxed title size=title,</xsl:text>
    <xsl:text>after skip=1em,</xsl:text>
    <xsl:text>before skip=1em,</xsl:text>
    <xsl:text>fonttitle={\bfseries},</xsl:text>

    <xsl:text>overlay unbroken and last={
        \node[text=white, align=right, rounded corners, fill=Gold, xshift=-4mm, minimum height=6mm, anchor=east] at (frame.south east) {\faDna};
    }</xsl:text>
</xsl:template>

<xsl:param name="latex.preamble.late">
    <xsl:text>\renewcommand{\terminology}[1]{{\color{JungleGreen}\textbf{#1}}}</xsl:text>
</xsl:param>

</xsl:stylesheet>