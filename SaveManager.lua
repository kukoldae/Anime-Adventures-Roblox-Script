local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v24,v25) local v26={};for v41=1, #v24 do v6(v26,v0(v4(v1(v2(v24,v41,v41 + 1 )),v1(v2(v25,1 + (v41% #v25) ,1 + (v41% #v25) + 1 )))%256 ));end return v5(v26);end local v8=tonumber;local v9=string.byte;local v10=string.char;local v11=string.sub;local v12=string.gsub;local v13=string.rep;local v14=table.concat;local v15=table.insert;local v16=math.ldexp;local v17=getfenv or function() return _ENV;end ;local v18=setmetatable;local v19=pcall;local v20=select;local v21=unpack or table.unpack ;local v22=tonumber;local function v23(v27,v28,...) local v29=1;local v30;v27=v12(v11(v27,5),v7("\56\242","\66\22\220\81\226\28\125\167"),function(v42) if (v9(v42,5 -3 )==(231 -150)) then v30=v8(v11(v42,1 -0 ,1));return "";else local v101=0;local v102;while true do if (v101==0) then v102=v10(v8(v42,16));if v30 then local v123=0;local v124;while true do if (0==v123) then v124=v13(v102,v30);v30=nil;v123=1;end if (v123==1) then return v124;end end else return v102;end break;end end end end);local function v31(v43,v44,v45) if v45 then local v103=0;local v104;while true do if (0==v103) then v104=(v43/(2^(v44-1)))%(2^(((v45-1) -(v44-(2 -1))) + 1)) ;return v104-(v104%1) ;end end else local v105=2^(v44-1) ;return (((v43%(v105 + v105))>=v105) and 1) or 0 ;end end local function v32() local v46=0;local v47;while true do if (v46==0) then v47=v9(v27,v29,v29);v29=v29 + 1 ;v46=1;end if (v46==1) then return v47;end end end local function v33() local v48=0;local v49;local v50;while true do if (v48==0) then v49,v50=v9(v27,v29,v29 + 2 );v29=v29 + 2 ;v48=1;end if (v48==1) then return (v50 * 256) + v49 ;end end end local function v34() local v51,v52,v53,v54=v9(v27,v29,v29 + 3 );v29=v29 + (623 -(555 + 64)) ;return (v54 * (16778147 -(857 + 74))) + (v53 * (66104 -(367 + 201))) + (v52 * 256) + v51 ;end local function v35() local v55=v34();local v56=v34();local v57=1;local v58=(v31(v56,1,947 -(214 + 713) ) * (2^32)) + v55 ;local v59=v31(v56,21,31);local v60=((v31(v56,32)==1) and  -(1 + 0)) or 1 ;if (v59==0) then if (v58==0) then return v60 * 0 ;else local v108=0;while true do if (v108==0) then v59=1;v57=0;break;end end end elseif (v59==2047) then return ((v58==0) and (v60 * (1/0))) or (v60 * NaN) ;end return v16(v60,v59-1023 ) * (v57 + (v58/(2^52))) ;end local function v36(v61) local v62=0;local v63;local v64;while true do if (v62==0) then v63=nil;if  not v61 then local v116=0;while true do if (v116==0) then v61=v34();if (v61==0) then return "";end break;end end end v62=1;end if (v62==1) then v63=v11(v27,v29,(v29 + v61) -1 );v29=v29 + v61 ;v62=2;end if (v62==2) then v64={};for v109=1, #v63 do v64[v109]=v10(v9(v11(v63,v109,v109)));end v62=3;end if (v62==3) then return v14(v64);end end end local v37=v34;local function v38(...) return {...},v20("#",...);end local function v39() local v65={};local v66={};local v67={};local v68={v65,v66,nil,v67};local v69=v34();local v70={};for v78=1,v69 do local v79=0;local v80;local v81;while true do if (v79==0) then v80=v32();v81=nil;v79=1;end if (v79==1) then if (v80==1) then v81=v32()~=0 ;elseif (v80==2) then v81=v35();elseif (v80==3) then v81=v36();end v70[v78]=v81;break;end end end v68[3]=v32();for v82=1,v34() do local v83=0;local v84;while true do if (v83==0) then v84=v32();if (v31(v84,1,1)==(1637 -(1523 + 114))) then local v119=0;local v120;local v121;local v122;while true do if (1==v119) then v122={v33(),v33(),nil,nil};if (v120==0) then local v126=0;while true do if (v126==0) then v122[3]=v33();v122[4]=v33();break;end end elseif (v120==(1 -0)) then v122[3]=v34();elseif (v120==2) then v122[1068 -(68 + 997) ]=v34() -(2^16) ;elseif (v120==3) then local v170=0;while true do if (v170==0) then v122[3]=v34() -(2^(1286 -(226 + 1044))) ;v122[4]=v33();break;end end end v119=2;end if (v119==0) then v120=v31(v84,2,3);v121=v31(v84,4,6);v119=1;end if (v119==2) then if (v31(v121,1,1)==1) then v122[2]=v70[v122[2]];end if (v31(v121,8 -6 ,2)==1) then v122[3]=v70[v122[3]];end v119=3;end if (v119==3) then if (v31(v121,3,3)==1) then v122[121 -(32 + 85) ]=v70[v122[4]];end v65[v82]=v122;break;end end end break;end end end for v85=1,v34() do v66[v85-1 ]=v39();end return v68;end local function v40(v72,v73,v74) local v75=v72[1];local v76=v72[2 + 0 ];local v77=v72[3];return function(...) local v87=v75;local v88=v76;local v89=v77;local v90=v38;local v91=1;local v92= -1;local v93={};local v94={...};local v95=v20("#",...) -1 ;local v96={};local v97={};for v106=0,v95 do if (v106>=v89) then v93[v106-v89 ]=v94[v106 + 1 ];else v97[v106]=v94[v106 + 1 ];end end local v98=(v95-v89) + 1 ;local v99;local v100;while true do local v107=0;while true do if (v107==1) then if (v100<=28) then if (v100<=13) then if (v100<=6) then if (v100<=2) then if (v100<=(0 + 0)) then local v137;local v138;local v139;v97[v99[2]]={};v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v99[3];v91=v91 + 1 ;v99=v87[v91];v97[v99[959 -(892 + 65) ]]= #v97[v99[3]];v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v99[3];v91=v91 + 1 ;v99=v87[v91];v139=v99[2];v138=v97[v139];v137=v97[v139 + 2 ];if (v137>0) then if (v138>v97[v139 + 1 ]) then v91=v99[3];else v97[v139 + 3 ]=v138;end elseif (v138<v97[v139 + 1 ]) then v91=v99[3];else v97[v139 + 3 ]=v138;end elseif (v100>1) then local v171=0;local v172;local v173;local v174;while true do if (v171==2) then if (v173>0) then if (v174<=v97[v172 + 1 ]) then v91=v99[3];v97[v172 + (7 -4) ]=v174;end elseif (v174>=v97[v172 + 1 ]) then local v564=0;while true do if (v564==0) then v91=v99[3];v97[v172 + 3 ]=v174;break;end end end break;end if (v171==1) then v174=v97[v172] + v173 ;v97[v172]=v174;v171=2;end if (v171==0) then v172=v99[2];v173=v97[v172 + 2 ];v171=1;end end else local v175;local v176;v97[v99[2]]=v73[v99[3]];v91=v91 + (1 -0) ;v99=v87[v91];v176=v99[2];v175=v97[v99[3]];v97[v176 + 1 ]=v175;v97[v176]=v175[v99[4]];v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v73[v99[3]];v91=v91 + 1 ;v99=v87[v91];v176=v99[2];do return v97[v176](v21(v97,v176 + 1 ,v99[3]));end v91=v91 + 1 ;v99=v87[v91];v176=v99[2];do return v21(v97,v176,v92);end v91=v91 + (1 -0) ;v99=v87[v91];do return;end end elseif (v100<=4) then if (v100==3) then local v185;local v186;local v187;v97[v99[352 -(87 + 263) ]]=v97[v99[183 -(67 + 113) ]][v99[4]];v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v97[v99[3]];v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v99[3];v91=v91 + 1 ;v99=v87[v91];v187=v99[2];v97[v187]=v97[v187](v21(v97,v187 + 1 ,v99[3]));v91=v91 + 1 + 0 ;v99=v87[v91];v97[v99[2]]=v97[v99[3]];v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v74[v99[3]];v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v97[v99[3]];v91=v91 + 1 ;v99=v87[v91];v187=v99[2];v186={v97[v187](v97[v187 + 1 ])};v185=0;for v334=v187,v99[4] do local v335=0;while true do if (0==v335) then v185=v185 + 1 ;v97[v334]=v186[v185];break;end end end v91=v91 + 1 ;v99=v87[v91];v91=v99[3];else local v197=v99[3];local v198=v97[v197];for v336=v197 + 1 ,v99[4] do v198=v198   .. v97[v336] ;end v97[v99[2]]=v198;end elseif (v100>5) then local v200=0;local v201;local v202;while true do if (v200==0) then v201=v99[2];v202=v97[v201];v200=1;end if (v200==1) then for v514=v201 + (2 -1) ,v92 do v15(v202,v97[v514]);end break;end end else local v203=v99[2];local v204,v205=v90(v97[v203](v21(v97,v203 + 1 ,v99[3 + 0 ])));v92=(v205 + v203) -(3 -2) ;local v206=0;for v337=v203,v92 do v206=v206 + (953 -(802 + 150)) ;v97[v337]=v204[v206];end end elseif (v100<=9) then if (v100<=(18 -11)) then v97[v99[2]]=v73[v99[3]];elseif (v100==8) then v97[v99[2]]=v99[3];else local v209=v99[2];local v210=v99[4];local v211=v209 + 2 ;local v212={v97[v209](v97[v209 + 1 ],v97[v211])};for v340=1,v210 do v97[v211 + v340 ]=v212[v340];end local v213=v212[1];if v213 then local v367=0;while true do if (v367==0) then v97[v211]=v213;v91=v99[3];break;end end else v91=v91 + (1 -0) ;end end elseif (v100<=11) then if (v100>10) then local v214=0;local v215;while true do if (v214==0) then v215=v99[2];do return v97[v215](v21(v97,v215 + 1 ,v92));end break;end end else v97[v99[2]]=v40(v88[v99[3 + 0 ]],nil,v74);end elseif (v100>12) then local v217=0;local v218;local v219;local v220;local v221;while true do if (v217==3) then v99=v87[v91];v97[v99[2]]=v99[3];v91=v91 + 1 ;v217=4;end if (v217==0) then v218=nil;v219,v220=nil;v221=nil;v217=1;end if (v217==5) then v92=(v220 + v221) -1 ;v218=0;for v515=v221,v92 do local v516=0;while true do if (v516==0) then v218=v218 + 1 ;v97[v515]=v219[v218];break;end end end v217=6;end if (v217==7) then v97[v221]=v97[v221](v21(v97,v221 + 1 ,v92));v91=v91 + 1 ;v99=v87[v91];v217=8;end if (v217==4) then v99=v87[v91];v221=v99[2];v219,v220=v90(v97[v221](v21(v97,v221 + 1 ,v99[3])));v217=5;end if (v217==8) then if (v97[v99[2]]==v99[4]) then v91=v91 + 1 ;else v91=v99[3];end break;end if (v217==6) then v91=v91 + 1 ;v99=v87[v91];v221=v99[2];v217=7;end if (v217==2) then v221=v99[2];v97[v221]=v97[v221](v21(v97,v221 + (998 -(915 + 82)) ,v99[3]));v91=v91 + 1 ;v217=3;end if (v217==1) then v97[v99[2]]=v99[3];v91=v91 + 1 ;v99=v87[v91];v217=2;end end else local v222=0;while true do if (v222==6) then v97[v99[2]]=v74[v99[3]];v91=v91 + 1 ;v99=v87[v91];v222=7;end if (5==v222) then v97[v99[2 -0 ]]=v97[v99[1190 -(1069 + 118) ]][v99[8 -4 ]];v91=v91 + 1 ;v99=v87[v91];v222=6;end if (v222==4) then v97[v99[2]]=v74[v99[3]];v91=v91 + 1 + 0 ;v99=v87[v91];v222=5;end if (v222==3) then v97[v99[2]]=v97[v99[3]][v99[4]];v91=v91 + 1 ;v99=v87[v91];v222=4;end if (7==v222) then if  not v97[v99[3 -1 ]] then v91=v91 + 1 + 0 ;else v91=v99[3];end break;end if (v222==2) then v97[v99[2]]=v74[v99[3]];v91=v91 + 1 ;v99=v87[v91];v222=3;end if (v222==0) then v97[v99[2]]=v74[v99[3]];v91=v91 + 1 ;v99=v87[v91];v222=1;end if (v222==1) then v97[v99[2]]=v97[v99[8 -5 ]][v99[4]];v91=v91 + 1 ;v99=v87[v91];v222=2;end end end elseif (v100<=20) then if (v100<=16) then if (v100<=(24 -10)) then local v149=0;local v150;local v151;local v152;while true do if (v149==0) then v150=v99[2];v151={v97[v150](v21(v97,v150 + 1 ,v99[3]))};v149=1;end if (v149==1) then v152=0;for v368=v150,v99[4] do local v369=0;while true do if (v369==0) then v152=v152 + 1 ;v97[v368]=v151[v152];break;end end end break;end end elseif (v100>15) then for v344=v99[2],v99[3] do v97[v344]=nil;end elseif (v99[2]==v97[v99[4]]) then v91=v91 + 1 ;else v91=v99[3];end elseif (v100<=18) then if (v100>17) then local v223=0;local v224;local v225;local v226;local v227;local v228;while true do if (v223==4) then v97[v99[2]]=v73[v99[794 -(368 + 423) ]];v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v97[v99[9 -6 ]];v223=5;end if (v223==1) then v97[v99[2]]=v73[v99[3]];v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v73[v99[3]];v223=2;end if (v223==0) then v224=nil;v225=nil;v226,v227=nil;v228=nil;v223=1;end if (v223==7) then v225=0;for v517=v228,v92 do local v518=0;while true do if (v518==0) then v225=v225 + 1 ;v97[v517]=v226[v225];break;end end end v91=v91 + (3 -2) ;v99=v87[v91];v223=8;end if (v223==6) then v99=v87[v91];v228=v99[2];v226,v227=v90(v97[v228](v21(v97,v228 + (19 -(10 + 8)) ,v99[3])));v92=(v227 + v228) -1 ;v223=7;end if (5==v223) then v91=v91 + 1 ;v99=v87[v91];for v519=v99[2],v99[3] do v97[v519]=nil;end v91=v91 + 1 ;v223=6;end if (v223==8) then v228=v99[2];v224=v97[v228];for v521=v228 + (443 -(416 + 26)) ,v92 do v15(v224,v97[v521]);end break;end if (v223==3) then v99=v87[v91];v97[v99[2]]={};v91=v91 + 1 ;v99=v87[v91];v223=4;end if (2==v223) then v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v73[v99[3]];v91=v91 + 1 ;v223=3;end end else local v229;local v230;local v231;v97[v99[2]]=v97[v99[3]][v99[4]];v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v97[v99[9 -6 ]];v91=v91 + 1 ;v99=v87[v91];v97[v99[1 + 1 ]]=v97[v99[3]];v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v97[v99[4 -1 ]];v91=v91 + 1 ;v99=v87[v91];v231=v99[2];v230={v97[v231](v21(v97,v231 + 1 ,v99[3]))};v229=0;for v346=v231,v99[442 -(145 + 293) ] do local v347=0;while true do if (0==v347) then v229=v229 + (431 -(44 + 386)) ;v97[v346]=v230[v229];break;end end end v91=v91 + 1 ;v99=v87[v91];if v97[v99[2]] then v91=v91 + 1 ;else v91=v99[3];end end elseif (v100>19) then v97[v99[2]]=v97[v99[1489 -(998 + 488) ]]%v99[4] ;else v97[v99[2]]=v97[v99[3]]%v97[v99[4]] ;end elseif (v100<=24) then if (v100<=22) then if (v100>21) then local v242=0;local v243;while true do if (v242==0) then v243=v99[1 + 1 ];do return v97[v243](v21(v97,v243 + 1 ,v99[3]));end break;end end else local v244;local v245,v246;local v247;v97[v99[2]]=v97[v99[3]][v99[4]];v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v97[v99[3 + 0 ]];v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v74[v99[3]];v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v97[v99[3]][v99[4]];v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v97[v99[3]];v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v97[v99[775 -(201 + 571) ]];v91=v91 + 1 ;v99=v87[v91];v247=v99[2];v245,v246=v90(v97[v247](v21(v97,v247 + (1139 -(116 + 1022)) ,v99[3])));v92=(v246 + v247) -1 ;v244=0;for v348=v247,v92 do local v349=0;while true do if (v349==0) then v244=v244 + 1 ;v97[v348]=v245[v244];break;end end end v91=v91 + 1 ;v99=v87[v91];v247=v99[2];v97[v247](v21(v97,v247 + 1 ,v92));v91=v91 + 1 ;v99=v87[v91];v91=v99[3];end elseif (v100>23) then v91=v99[3];else local v258=0;local v259;local v260;local v261;while true do if (v258==0) then v259=v99[2];v260=v97[v259];v258=1;end if (1==v258) then v261=v97[v259 + 2 ];if (v261>0) then if (v260>v97[v259 + 1 ]) then v91=v99[3];else v97[v259 + (12 -9) ]=v260;end elseif (v260<v97[v259 + 1 ]) then v91=v99[3];else v97[v259 + 3 ]=v260;end break;end end end elseif (v100<=26) then if (v100==(15 + 10)) then local v262=v99[2];do return v21(v97,v262,v92);end elseif  not v97[v99[2]] then v91=v91 + 1 ;else v91=v99[10 -7 ];end elseif (v100==27) then v97[v99[2]]=v97[v99[3]][v99[4]];else v97[v99[2]]=v99[3] + v97[v99[4]] ;end elseif (v100<=43) then if (v100<=35) then if (v100<=31) then if (v100<=29) then local v153=v99[2];v97[v153](v21(v97,v153 + 1 ,v99[3]));elseif (v100>(106 -76)) then if v97[v99[2]] then v91=v91 + 1 ;else v91=v99[3];end else local v266=v99[2];local v267={};for v350=1, #v96 do local v351=v96[v350];for v374=0, #v351 do local v375=0;local v376;local v377;local v378;while true do if (v375==1) then v378=v376[2];if ((v377==v97) and (v378>=v266)) then v267[v378]=v377[v378];v376[860 -(814 + 45) ]=v267;end break;end if (v375==0) then v376=v351[v374];v377=v376[1];v375=1;end end end end end elseif (v100<=33) then if (v100==32) then local v268=0;local v269;local v270;local v271;while true do if (v268==0) then v269=v88[v99[3]];v270=nil;v268=1;end if (2==v268) then for v526=1,v99[4] do local v527=0;local v528;while true do if (v527==0) then v91=v91 + 1 ;v528=v87[v91];v527=1;end if (v527==1) then if (v528[1]==58) then v271[v526-1 ]={v97,v528[3]};else v271[v526-1 ]={v73,v528[3]};end v96[ #v96 + 1 ]=v271;break;end end end v97[v99[2]]=v40(v269,v270,v74);break;end if (v268==1) then v271={};v270=v18({},{[v7("\189\196\227\249\194\208\154","\181\226\155\138\151\166")]=function(v529,v530) local v531=0;local v532;while true do if (v531==0) then v532=v271[v530];return v532[1][v532[2]];end end end,[v7("\216\99\117\116\46\43\233\88\126\105","\66\135\60\27\17\89")]=function(v533,v534,v535) local v536=0;local v537;while true do if (v536==0) then v537=v271[v534];v537[1][v537[2]]=v535;break;end end end});v268=2;end end else local v272=v99[2];v97[v272]=v97[v272](v21(v97,v272 + 1 ,v92));end elseif (v100>34) then local v274=0;local v275;local v276;local v277;local v278;while true do if (v274==5) then v97[v278]=v97[v278](v21(v97,v278 + 1 + 0 ,v92));v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v73[v99[888 -(261 + 624) ]];v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v73[v99[3]];v274=6;end if (v274==12) then v91=v91 + (3 -2) ;v99=v87[v91];v97[v99[9 -7 ]]=v97[v99[3]]%v99[4] ;v91=v91 + 1 ;v99=v87[v91];v278=v99[2];v276,v277=v90(v97[v278](v97[v278 + 1 ]));v274=13;end if (v274==1) then v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v73[v99[3]];v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v73[v99[3]];v91=v91 + 1 ;v274=2;end if (v274==4) then v276,v277=v90(v97[v278](v21(v97,v278 + 1 ,v99[3])));v92=(v277 + v278) -1 ;v275=0;for v538=v278,v92 do v275=v275 + 1 ;v97[v538]=v276[v275];end v91=v91 + 1 ;v99=v87[v91];v278=v99[2];v274=5;end if (v274==0) then v275=nil;v276,v277=nil;v278=nil;v97[v99[2]]=v97[v99[3]];v91=v91 + (2 -1) ;v99=v87[v91];v97[v99[2]]=v73[v99[1 + 2 ]];v274=1;end if (v274==6) then v91=v91 + (1 -0) ;v99=v87[v91];v97[v99[2]]=v97[v99[3]];v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]= #v97[v99[1083 -(1020 + 60) ]];v91=v91 + 1 ;v274=7;end if (v274==2) then v99=v87[v91];v97[v99[2]]=v73[v99[3]];v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v97[v99[3]];v91=v91 + 1 ;v99=v87[v91];v274=3;end if (11==v274) then v92=(v277 + v278) -1 ;v275=0;for v541=v278,v92 do v275=v275 + 1 ;v97[v541]=v276[v275];end v91=v91 + (1424 -(630 + 793)) ;v99=v87[v91];v278=v99[2];v97[v278]=v97[v278](v21(v97,v278 + 1 ,v92));v274=12;end if (v274==10) then v92=(v277 + v278) -1 ;v275=0;for v544=v278,v92 do local v545=0;while true do if (v545==0) then v275=v275 + 1 ;v97[v544]=v276[v275];break;end end end v91=v91 + 1 ;v99=v87[v91];v278=v99[2];v276,v277=v90(v97[v278](v21(v97,v278 + 1 ,v92)));v274=11;end if (9==v274) then v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v97[v99[3]] + v99[4] ;v91=v91 + 1 ;v99=v87[v91];v278=v99[2];v276,v277=v90(v97[v278](v21(v97,v278 + 1 ,v99[3])));v274=10;end if (v274==13) then v92=(v277 + v278) -1 ;v275=0;for v546=v278,v92 do v275=v275 + 1 + 0 ;v97[v546]=v276[v275];end v91=v91 + 1 ;v99=v87[v91];v278=v99[2];v97[v278](v21(v97,v278 + 1 ,v92));break;end if (v274==7) then v99=v87[v91];v97[v99[2]]=v97[v99[3]]%v97[v99[4]] ;v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v99[3] + v97[v99[4]] ;v91=v91 + 1 ;v99=v87[v91];v274=8;end if (v274==3) then v97[v99[2]]=v97[v99[3]];v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v97[v99[3]] + v99[4] ;v91=v91 + 1 ;v99=v87[v91];v278=v99[2];v274=4;end if (8==v274) then v97[v99[2]]= #v97[v99[3]];v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v97[v99[3]]%v97[v99[4]] ;v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v99[3] + v97[v99[4]] ;v274=9;end end else do return v97[v99[2]];end end elseif (v100<=39) then if (v100<=37) then if (v100==36) then local v279=v99[2];local v280,v281=v90(v97[v279](v97[v279 + 1 ]));v92=(v281 + v279) -1 ;local v282=0;for v352=v279,v92 do v282=v282 + 1 ;v97[v352]=v280[v282];end else v97[v99[2]]=v97[v99[3]] + v99[4] ;end elseif (v100>38) then v97[v99[2]]={};else v97[v99[2]]=v74[v99[3]];end elseif (v100<=(141 -100)) then if (v100==40) then local v287=v99[1749 -(760 + 987) ];v97[v287](v21(v97,v287 + 1 ,v92));else do return;end end elseif (v100==42) then v97[v99[1915 -(1789 + 124) ]]=v97[v99[769 -(745 + 21) ]] -v99[4] ;else local v289=v99[2];v97[v289](v97[v289 + 1 ]);end elseif (v100<=50) then if (v100<=46) then if (v100<=44) then local v154;local v155,v156;local v157;local v158;v158=v99[2];v157=v97[v99[3]];v97[v158 + 1 ]=v157;v97[v158]=v157[v99[4]];v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v73[v99[3]];v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v99[3];v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v99[3];v91=v91 + 1 ;v99=v87[v91];v158=v99[2];v155,v156=v90(v97[v158](v21(v97,v158 + 1 + 0 ,v99[3])));v92=(v156 + v158) -(2 -1) ;v154=0 -0 ;for v168=v158,v92 do local v169=0;while true do if (v169==0) then v154=v154 + 1 ;v97[v168]=v155[v154];break;end end end v91=v91 + 1 ;v99=v87[v91];v158=v99[2];v97[v158]=v97[v158](v21(v97,v158 + 1 ,v92));v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]={};elseif (v100>45) then local v290=v99[2];do return v21(v97,v290,v290 + v99[3] );end else local v291=0;local v292;while true do if (v291==0) then v292=v99[2];v97[v292]=v97[v292](v21(v97,v292 + 1 ,v99[3]));break;end end end elseif (v100<=48) then if (v100>47) then v97[v99[2]]= #v97[v99[3]];elseif (v97[v99[2]]==v99[4]) then v91=v91 + 1 ;else v91=v99[3];end elseif (v100>49) then local v294=0;local v295;local v296;local v297;local v298;local v299;while true do if (v294==4) then v296,v297=v90(v97[v299](v97[v299 + 1 ]));v92=(v297 + v299) -1 ;v295=0;for v549=v299,v92 do local v550=0;while true do if (v550==0) then v295=v295 + (1056 -(87 + 968)) ;v97[v549]=v296[v295];break;end end end v91=v91 + 1 ;v294=5;end if (v294==2) then v97[v299]=v298[v99[1 + 3 ]];v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v74[v99[3 + 0 ]];v91=v91 + 1 ;v294=3;end if (v294==1) then v91=v91 + 1 ;v99=v87[v91];v299=v99[2];v298=v97[v99[3]];v97[v299 + 1 ]=v298;v294=2;end if (v294==0) then v295=nil;v296,v297=nil;v298=nil;v299=nil;v97[v99[2]]=v73[v99[3]];v294=1;end if (v294==5) then v99=v87[v91];v299=v99[8 -6 ];do return v97[v299](v21(v97,v299 + 1 ,v92));end v91=v91 + 1 ;v99=v87[v91];v294=6;end if (v294==3) then v99=v87[v91];v97[v99[2]]=v73[v99[3]];v91=v91 + 1 ;v99=v87[v91];v299=v99[2];v294=4;end if (6==v294) then v299=v99[2];do return v21(v97,v299,v92);end v91=v91 + 1 ;v99=v87[v91];do return;end break;end end else do return v97[v99[2]]();end end elseif (v100<=54) then if (v100<=52) then if (v100>51) then local v300=v99[2];v97[v300]=v97[v300](v97[v300 + 1 ]);else v97[v99[2]][v99[3]]=v97[v99[4]];end elseif (v100==53) then local v304=v99[2];local v305={v97[v304](v97[v304 + 1 ])};local v306=0;for v355=v304,v99[4] do v306=v306 + 1 ;v97[v355]=v305[v306];end else local v307;local v308,v309;local v310;v97[v99[2]]=v97[v99[3 + 0 ]][v99[4]];v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v97[v99[3]];v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v74[v99[3]];v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v97[v99[3]][v99[4]];v91=v91 + (2 -1) ;v99=v87[v91];v97[v99[2]]=v97[v99[3]];v91=v91 + 1 ;v99=v87[v91];v97[v99[1415 -(447 + 966) ]]=v97[v99[3]];v91=v91 + 1 ;v99=v87[v91];v97[v99[5 -3 ]]=v97[v99[3]] -v99[4] ;v91=v91 + 1 ;v99=v87[v91];v310=v99[2];v308,v309=v90(v97[v310](v21(v97,v310 + 1 ,v99[1820 -(1703 + 114) ])));v92=(v309 + v310) -1 ;v307=0;for v358=v310,v92 do v307=v307 + 1 ;v97[v358]=v308[v307];end v91=v91 + 1 ;v99=v87[v91];v310=v99[2];v97[v310](v21(v97,v310 + (702 -(376 + 325)) ,v92));v91=v91 + 1 ;v99=v87[v91];v97[v99[2]]=v97[v99[3]] + v99[4] ;v91=v91 + 1 ;v99=v87[v91];v91=v99[3];end elseif (v100<=56) then if (v100>55) then local v321=v99[2];local v322,v323=v90(v97[v321](v21(v97,v321 + 1 ,v92)));v92=(v323 + v321) -1 ;local v324=0;for v361=v321,v92 do local v362=0;while true do if (v362==0) then v324=v324 + 1 ;v97[v361]=v322[v324];break;end end end else local v325=v99[2];local v326=v97[v99[3]];v97[v325 + 1 ]=v326;v97[v325]=v326[v99[4]];end elseif (v100>57) then v97[v99[2]]=v97[v99[3]];else v97[v99[2]]=v97[v99[3]][v97[v99[5 -1 ]]];end v91=v91 + 1 ;break;end if (v107==0) then v99=v87[v91];v100=v99[1];v107=1;end end end end;end return v40(v39(),{},v28)(...);end return v23("LOL!0D3Q0003063Q00737472696E6703043Q006368617203043Q00627974652Q033Q0073756203053Q0062697433322Q033Q0062697403043Q0062786F7203053Q007461626C6503063Q00636F6E63617403063Q00696E7365727403053Q006D6174636803083Q00746F6E756D62657203053Q007063612Q6C00243Q00120C3Q00013Q00206Q000200122Q000100013Q00202Q00010001000300122Q000200013Q00202Q00020002000400122Q000300053Q00062Q0003000A000100010004183Q000A0001001226000300063Q00201B000400030007001226000500083Q00201B000500050009001226000600083Q00201B00060006000A00062000073Q000100062Q003A3Q00064Q003A8Q003A3Q00044Q003A3Q00014Q003A3Q00024Q003A3Q00053Q001226000800013Q00201B00080008000B0012260009000C3Q001226000A000D3Q000620000B0001000100052Q003A3Q00074Q003A3Q00094Q003A3Q00084Q003A3Q000A4Q003A3Q000B4Q003A000C000B4Q0031000C00014Q0019000C6Q00293Q00013Q00023Q00023Q00026Q00F03F026Q00704002266Q00025Q00122Q000300016Q00045Q00122Q000500013Q00042Q0003002100012Q000700076Q0023000800026Q000900016Q000A00026Q000B00036Q000C00046Q000D8Q000E00063Q00202Q000F000600014Q000C000F6Q000B3Q00024Q000C00036Q000D00046Q000E00016Q000F00016Q000F0006000F00102Q000F0001000F4Q001000016Q00100006001000102Q00100001001000202Q0010001000014Q000D00106Q000C8Q000A3Q000200202Q000A000A00024Q0009000A6Q00073Q00010004020003000500012Q0007000300054Q003A000400024Q0016000300044Q001900036Q00293Q00017Q00043Q00027Q004003053Q003A25642B3A2Q033Q0025642B026Q00F03F001C3Q0006205Q000100012Q00078Q0012000100016Q000200026Q000300026Q00048Q000500036Q00068Q000700076Q000500076Q00043Q000100201B00040004000100120D000500026Q00030005000200122Q000400036Q000200046Q00013Q000200262Q00010018000100040004183Q001800012Q003A00016Q002700026Q0016000100024Q001900015Q0004183Q001B00012Q0007000100044Q0031000100014Q001900016Q00293Q00013Q00013Q00093Q0003043Q0067616D65030A3Q0047657453657276696365030B3Q00A9D5AF46FAA5283A88C2BE03083Q004CE1A1DB36A9C05A030F3Q004372656174654469726563746F7279030B3Q0053706C6974537472696E67030A3Q004C6F6164436F6E666967030A3Q0053617665436F6E666967026Q00F03F011A3Q00061F3Q001800013Q0004183Q00180001001226000100013Q00202C0001000100024Q00035Q00122Q000400033Q00122Q000500046Q000300056Q00013Q00024Q00025Q00062000033Q000100012Q003A3Q00023Q00103300020005000300020A000300013Q00103300020006000300062000030002000100012Q003A3Q00013Q00103300020007000300062000030003000100012Q003A3Q00013Q0010330002000800032Q0022000200024Q001E00015Q0004183Q0019000100201B00013Q00092Q00293Q00013Q00043Q00083Q00028Q00026Q00F03F030B3Q0053706C6974537472696E6703013Q005C03063Q0069706169727303083Q006973666F6C646572030A3Q006D616B65666F6C646572034Q0001403Q001208000100014Q0010000200033Q00262F00010039000100020004183Q0039000100262F00020004000100010004183Q000400012Q000700045Q0020030004000400034Q00055Q00122Q000600046Q0004000600024Q000300043Q00122Q000400056Q000500036Q00040002000600044Q00340001001208000900014Q0010000A000B3Q000E0F0002002E000100090004183Q002E000100262F000A001F000100020004183Q001F0001001226000C00064Q003A000D000B4Q0034000C0002000200061A000C0034000100010004183Q00340001001226000C00074Q003A000D000B4Q002B000C000200010004183Q0034000100262F000A0014000100010004183Q00140001001208000B00083Q001208000C00024Q003A000D00073Q001208000E00023Q000417000C002B00012Q003A0010000B4Q003900110003000F001208001200044Q0004000B00100012000402000C00260001001208000A00023Q0004183Q001400010004183Q00340001000E0F00010012000100090004183Q00120001001208000A00014Q0010000B000B3Q001208000900023Q0004183Q0012000100060900040010000100020004183Q001000010004183Q003F00010004183Q000400010004183Q003F000100262F00010002000100010004183Q00020001001208000200014Q0010000300033Q001208000100023Q0004183Q000200012Q00293Q00017Q00073Q00028Q00026Q00F03F03063Q00737472696E6703043Q0066696E6403053Q007461626C6503063Q00696E736572742Q033Q0073756202373Q001208000200014Q0010000300043Q00262F00020008000100010004183Q000800012Q002700056Q003A000300053Q001208000400023Q001208000200023Q00262F00020002000100020004183Q00020001001226000500033Q0020110005000500044Q00068Q000700016Q000800046Q00050008000600062Q0005002900013Q0004183Q00290001001208000700014Q0010000800083Q000E0F00010014000100070004183Q00140001001208000800013Q00262F00080017000100010004183Q00170001001226000900053Q0020360009000900064Q000A00033Q00122Q000B00033Q00202Q000B000B00074Q000C8Q000D00043Q00202Q000E000500024Q000B000E6Q00093Q000100202Q00040006000200044Q000A00010004183Q001700010004183Q000A00010004183Q001400010004183Q000A0001001226000700053Q0020150007000700064Q000800033Q00122Q000900033Q00202Q0009000900074Q000A8Q000B00046Q0009000B6Q00073Q000100044Q003400010004183Q000A00012Q0022000300023Q0004183Q000200012Q00293Q00017Q00063Q00028Q0003063Q00697366696C65026Q00F03F03053Q007063612Q6C03093Q00777269746566696C65034Q00012B3Q001208000100013Q00262F00010001000100010004183Q00010001001226000200024Q003A00036Q003400020002000200061F0002002300013Q0004183Q00230001001208000200014Q0010000300053Q00262F0002001C000100030004183Q001C00012Q0010000500053Q000E0F0001000D000100030004183Q000D0001001226000600043Q00062000073Q000100022Q00078Q003A8Q00350006000200072Q003A000500074Q003A000400063Q00061F0004002700013Q0004183Q002700012Q0022000500023Q0004183Q002700010004183Q000D00010004183Q0027000100262F0002000A000100010004183Q000A0001001208000300014Q0010000400043Q001208000200033Q0004183Q000A00010004183Q00270001001226000200054Q003A00035Q001208000400064Q001D0002000400012Q0010000200024Q0022000200023Q0004183Q000100012Q00293Q00013Q00013Q00023Q00030A3Q004A534F4E4465636F646503083Q007265616466696C6500084Q00327Q00206Q000100122Q000200026Q000300016Q000200039Q009Q008Q00017Q00043Q00028Q00026Q00F03F03053Q007063612Q6C03093Q00777269746566696C65021E3Q001208000200014Q0010000300053Q00262F00020017000100020004183Q001700012Q0010000500053Q00262F00030005000100010004183Q00050001001226000600033Q00062000073Q000100022Q00078Q003A3Q00014Q00350006000200072Q003A000500074Q003A000400063Q00061F0004001D00013Q0004183Q001D0001001226000600044Q003A00076Q003A000800054Q001D0006000800010004183Q001D00010004183Q000500010004183Q001D000100262F00020002000100010004183Q00020001001208000300014Q0010000400043Q001208000200023Q0004183Q000200012Q00293Q00013Q00013Q00013Q00030A3Q004A534F4E456E636F646500064Q00017Q00206Q00014Q000200018Q00029Q008Q00017Q00",v17(),...);
