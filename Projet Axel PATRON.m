latitude=ncread('1979.nc','latitude');
longitude=ncread('1979.nc','longitude');
t2m1979=ncread('1979.nc','t2m');
t2m1980=ncread('1980.nc','t2m');
t2m1981=ncread('1981.nc','t2m');
t2m1982=ncread('1982.nc','t2m');
t2m1983=ncread('1983.nc','t2m');
t2m1984=ncread('1984.nc','t2m');
t2m1985=ncread('1985.nc','t2m');
t2m1986=ncread('1986.nc','t2m');
t2m1987=ncread('1987.nc','t2m');
t2m1988=ncread('1988.nc','t2m');
t2m1989=ncread('1989.nc','t2m');
t2m1990=ncread('1990.nc','t2m');
t2m1991=ncread('1991.nc','t2m');
t2m1992=ncread('1992.nc','t2m');
t2m1993=ncread('1993.nc','t2m');
t2m1994=ncread('1994.nc','t2m');
t2m1995=ncread('1995.nc','t2m');
t2m1996=ncread('1996.nc','t2m');
t2m1997=ncread('1997.nc','t2m');
t2m1998=ncread('1998.nc','t2m');
t2m1999=ncread('1999.nc','t2m');
t2m2000=ncread('2000.nc','t2m');
t2m2001=ncread('2001.nc','t2m');
t2m2002=ncread('2002.nc','t2m');
t2m2003=ncread('2003.nc','t2m');
t2m2004=ncread('2004.nc','t2m');
t2m2005=ncread('2005.nc','t2m');
t2m2006=ncread('2006.nc','t2m');
t2m2007=ncread('2007.nc','t2m');
t2m2008=ncread('2008.nc','t2m');
t2m2009=ncread('2009.nc','t2m');
t2m2010=ncread('2010.nc','t2m');
t2m2011=ncread('2011.nc','t2m');
t2m2012=ncread('2012.nc','t2m');
t2m2013=ncread('2013.nc','t2m');
t2m2014=ncread('2014.nc','t2m');
t2m2015=ncread('2015.nc','t2m');
t2m2016=ncread('2016.nc','t2m');
t2m2017=ncread('2017.nc','t2m');
t2m2018=ncread('2018.nc','t2m');
t2m2019=ncread('2019.nc','t2m');
t2m=cat(3,t2m1979,t2m1980,t2m1981,t2m1982,t2m1983,t2m1984,t2m1985,t2m1986,t2m1987,t2m1988,t2m1989,t2m1990,t2m1991,t2m1992,t2m1993,t2m1994,t2m1995,t2m1996,t2m1997,t2m1998,t2m1999,t2m2000,t2m2001,t2m2002,t2m2003,t2m2004,t2m2005,t2m2006,t2m2007,t2m2008,t2m2009,t2m2010,t2m2011,t2m2012,t2m2013,t2m2014,t2m2015,t2m2016,t2m2017,t2m2018);

evolution(90,-180,-90,180,1979,2018)

min=800;
max=0;
u=0;
% %Moyennes des t2m sur les 4 decénies
% t2mdec=zeros(360,181,4);
% for v=[1:4]
%     for i=[1:360]
%         for j=[1:181]
%             u=0;
%             for t=[1:120]
%                 u=u+t2m(i,j,t+(v-1)*120);
%             end
%             t2mdec(i,j,v)=u/120;
%         end
%     end
% end
% 
% %Relevé du max et min afin d'obtenir l'intervalle pour le dégradé de couleurs
% for t=[1:4]
%     for i=[1:360]
%         for j=[1:181]
%             if t2mdec(i,j,t)>max
%                 max=t2mdec(i,j,t);
%             end
%             if t2mdec(i,j,t)<min
%                 min=t2mdec(i,j,t);
%             end
%         end
%     end
% end
% %Affichage du planisphère et tracage du dégradé pour une décenie donnée
% max=max-min;
% I=imread('monde.png');
% J=imresize(I,[905,1800]);
% imshow(J);
% for i=[1:360]
%     for j=[1:181]
%         hold on;
%         a=(t2mdec(i,j,1)-min)/max;
%         f=[a 1-a 0];
%         rectangle('Position',[i*5-5 j*5-5 i*5 j*5],'EdgeColor',f);
%     end
%  end

function [] = evolution(lat1,long1,lat2,long2,t1,t2)
latitude=ncread('1979.nc','latitude');
longitude=ncread('1979.nc','longitude');
t2m1979=ncread('1979.nc','t2m');
t2m1980=ncread('1980.nc','t2m');
t2m1981=ncread('1981.nc','t2m');
t2m1982=ncread('1982.nc','t2m');
t2m1983=ncread('1983.nc','t2m');
t2m1984=ncread('1984.nc','t2m');
t2m1985=ncread('1985.nc','t2m');
t2m1986=ncread('1986.nc','t2m');
t2m1987=ncread('1987.nc','t2m');
t2m1988=ncread('1988.nc','t2m');
t2m1989=ncread('1989.nc','t2m');
t2m1990=ncread('1990.nc','t2m');
t2m1991=ncread('1991.nc','t2m');
t2m1992=ncread('1992.nc','t2m');
t2m1993=ncread('1993.nc','t2m');
t2m1994=ncread('1994.nc','t2m');
t2m1995=ncread('1995.nc','t2m');
t2m1996=ncread('1996.nc','t2m');
t2m1997=ncread('1997.nc','t2m');
t2m1998=ncread('1998.nc','t2m');
t2m1999=ncread('1999.nc','t2m');
t2m2000=ncread('2000.nc','t2m');
t2m2001=ncread('2001.nc','t2m');
t2m2002=ncread('2002.nc','t2m');
t2m2003=ncread('2003.nc','t2m');
t2m2004=ncread('2004.nc','t2m');
t2m2005=ncread('2005.nc','t2m');
t2m2006=ncread('2006.nc','t2m');
t2m2007=ncread('2007.nc','t2m');
t2m2008=ncread('2008.nc','t2m');
t2m2009=ncread('2009.nc','t2m');
t2m2010=ncread('2010.nc','t2m');
t2m2011=ncread('2011.nc','t2m');
t2m2012=ncread('2012.nc','t2m');
t2m2013=ncread('2013.nc','t2m');
t2m2014=ncread('2014.nc','t2m');
t2m2015=ncread('2015.nc','t2m');
t2m2016=ncread('2016.nc','t2m');
t2m2017=ncread('2017.nc','t2m');
t2m2018=ncread('2018.nc','t2m');
t2m2019=ncread('2019.nc','t2m');
t2m=cat(3,t2m1979,t2m1980,t2m1981,t2m1982,t2m1983,t2m1984,t2m1985,t2m1986,t2m1987,t2m1988,t2m1989,t2m1990,t2m1991,t2m1992,t2m1993,t2m1994,t2m1995,t2m1996,t2m1997,t2m1998,t2m1999,t2m2000,t2m2001,t2m2002,t2m2003,t2m2004,t2m2005,t2m2006,t2m2007,t2m2008,t2m2009,t2m2010,t2m2011,t2m2012,t2m2013,t2m2014,t2m2015,t2m2016,t2m2017,t2m2018);
S=[0];

%Calcul de chaque surface de carrée 1°*1°
for j=3:180
    S(end+1)=(12364*cosd(latitude(j)+0.5));
end
S(end+1)=0;


annee=[t1-1978:t2-1978];
vallon=[long1+181:long2+180];
vallat=[(-lat1)+91:(-lat2)+90];
Ttot=[];
Tannee=[];

%calcul de la surface totale choisie
s=0
if (lat1==90)
    s=s+9711;
    lat3=89;
else
    lat3=lat1;
end
if (lat2==-90)
    s=s+9711;
    lat4=-89
else
    lat4=lat2
end
vallat2=[(-lat3)+91:(-lat4)+90];
for i=[long1:long2-1]
    for j=vallat2
        s=s+(12364*cosd(latitude(j)+0.5));
    end
end
s
u=1/12
[t1:u:t2+1-0.05]
%Calcul des moyennes annuelles de la zone choisie
for t=1:12*(t2-t1+1)
    T=0;
    for i=vallon
        for j=vallat
            T=T+t2m(i,j,t)*S(j);
        end
    end
    Ttot(end+1)=T/s-273.15;
end

for i=annee
    a=0;
    for j=1:12
        a=a+Ttot(12*(i-1)+j);
    end
    Tannee(end+1)=a/12;
end
coef=(max(Tannee)-min(Tannee))/(find(Tannee==max(Tannee(:)))-find(Tannee==min(Tannee(:))))

%Tracé de la courbe
Lan=[t1:t2];
% subplot(121)
% plot([t1:u:t2+1-u],Ttot)
plot(Lan,Tannee)
hold on
plot([t1+find(Tannee==min(Tannee(:)))-1 2050],[min(Tannee) min(Tannee)+(2050-(t1+find(Tannee==min(Tannee(:)))-1))*coef],'--r')
hold off
legend('Températures','Prévisions')
title('Température moyenne de la Terre')
end

