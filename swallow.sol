{\rtf1\ansi\ansicpg936\cocoartf2636
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;\f1\fnil\fcharset134 PingFangSC-Regular;}
{\colortbl;\red255\green255\blue255;\red79\green123\blue61;\red26\green26\blue41;\red172\green172\blue193;
\red70\green137\blue204;\red212\green212\blue212;\red167\green197\blue152;\red45\green175\blue118;\red14\green86\blue166;
\red13\green102\blue149;\red31\green133\blue64;\red237\green114\blue173;}
{\*\expandedcolortbl;;\cssrgb\c37647\c54510\c30588;\cssrgb\c13333\c13725\c21176;\cssrgb\c72941\c73333\c80000;
\cssrgb\c33725\c61176\c83922;\cssrgb\c86275\c86275\c86275;\cssrgb\c70980\c80784\c65882;\cssrgb\c19608\c72941\c53725;\cssrgb\c3137\c42353\c70980;
\cssrgb\c0\c47843\c65098;\cssrgb\c12941\c58039\c31765;\cssrgb\c95294\c54118\c73333;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 // SPDX-License-Identifier: MIT\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 pragma\cf4 \strokec4  \cf5 \strokec5 solidity\cf4 \strokec4  \cf6 \strokec6 >=\cf7 \strokec7 0.5.17\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\
\cf5 \cb3 \strokec5 contract\cf4 \strokec4  Swallow \cf6 \strokec6 \{\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf4 \cb3     \cf2 \strokec2 // 
\f1 \'cf\'f2\'ba\'cf\'d4\'bc\'d5\'cb\'bb\'a7\'d7\'aa\'d5\'cb
\f0  \cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 function\cf4 \strokec4  transderToContract\cf6 \strokec6 ()\cf4 \strokec4  \cf8 \strokec8 payable\cf4 \strokec4  \cf8 \strokec8 public\cf4 \strokec4  \cf6 \strokec6 \{\cf4 \cb1 \strokec4 \
\cb3         \cf8 \strokec8 payable\cf6 \strokec6 (\cf5 \strokec5 address\cf6 \strokec6 (\cf9 \strokec9 this\cf6 \strokec6 )).\cf4 \strokec4 transfer\cf6 \strokec6 (\cf10 \strokec10 msg\cf6 \strokec6 .\cf4 \strokec4 value\cf6 \strokec6 );\cf4 \cb1 \strokec4 \
\cb3     \cf6 \strokec6 \}\cf4 \cb1 \strokec4 \
\cb3     \cb1 \
\cb3     \cf2 \strokec2 // 
\f1 \'bb\'f1\'c8\'a1\'ba\'cf\'d4\'bc\'d5\'cb\'bb\'a7\'d3\'e0\'b6\'ee
\f0  \cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 function\cf4 \strokec4  getBalanceOfContract\cf6 \strokec6 ()\cf4 \strokec4  \cf8 \strokec8 public\cf4 \strokec4  \cf8 \strokec8 view\cf4 \strokec4  \cf11 \strokec11 returns\cf4 \strokec4  \cf6 \strokec6 (\cf5 \strokec5 uint256\cf6 \strokec6 )\cf4 \strokec4  \cf6 \strokec6 \{\cf4 \cb1 \strokec4 \
\cb3         \cf11 \strokec11 return\cf4 \strokec4  \cf5 \strokec5 address\cf6 \strokec6 (\cf9 \strokec9 this\cf6 \strokec6 ).\cf4 \strokec4 balance\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\cb3     \cf6 \strokec6 \}\cf4 \cb1 \strokec4 \
\cb3     \cb1 \
\cb3     \cf12 \strokec12 fallback\cf6 \strokec6 ()\cf4 \strokec4  \cf8 \strokec8 external\cf4 \strokec4  \cf8 \strokec8 payable\cf4 \strokec4  \cf6 \strokec6 \{\}\cf4 \cb1 \strokec4 \
\cb3     \cb1 \
\cb3     \cf12 \strokec12 receive\cf6 \strokec6 ()\cf4 \strokec4  \cf8 \strokec8 external\cf4 \strokec4  \cf8 \strokec8 payable\cf4 \strokec4  \cf6 \strokec6 \{\}\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 \}\cf4 \cb1 \strokec4 \
\
}