% file to create linear regressions

load XEPOSDataRealFinalFormat
SampleData = table2array(XEPOSDataRealFinalFormat(:, 2:15));
SurveyData = XEPOSDataRealFinalFormat(:, 16:30);

Si=SampleData(:, 1); %Si column  (Sample Data)
P=SampleData(:, 2); %P column 
S=SampleData(:, 3); %S column 
Ca=SampleData(:, 4); %Ca column 
Ti=SampleData(:, 5); %Ti column 
Fe=SampleData(:, 6); %Fe column 
Ni=SampleData(:, 7); %Ni column 
Cu=SampleData(:, 8); %Cu coulmn 
Zn=SampleData(:, 9); %Zn column 
Br=SampleData(:, 10);%Br column 
Sr=SampleData(:, 11); %Sr column 
Mo=SampleData(:, 12); %Mo column 
Sb=SampleData(:, 13); %Sb column 
Pb=SampleData(:, 14); %Pb column 

%plot a linear regression for Ca
figure
sgtitle('Linear regressions for Ca')
%with Cu
subplot(2,2,1)
scatter(Cu,Ca)
hold on
[a, sa, cov, r]= linfit(Cu, Ca,0) ;
y= a(2).*Cu + a(1);
plot(Cu, y, 'k')
ylabel('Ca(ppm)')
xlabel('Cu (ppm)')
legendinfo = ['[Ca] = ' num2str(a(2)) ' [Cu] + ' num2str(a(1)) ' where R = ' num2str(r)];
legend ('data', legendinfo)
hold off
%with Ni
subplot(2,2,2)
scatter(Ni,Ca)
hold on
[a, sa, cov, r]= linfit(Ni, Ca,0) ;
y= a(2).*Ni + a(1);
plot(Ni, y, 'k')
ylabel('Ca(ppm)')
xlabel('Ni (ppm)')
legendinfo = ['[Ca] = ' num2str(a(2)) ' [Ni] + ' num2str(a(1)) ' where R = ' num2str(r)];
legend ('data', legendinfo)
hold off
%with Pb
subplot(2,2,3)
scatter(Pb,Ca)
hold on
[a, sa, cov, r]= linfit(Pb, Ca,0) ;
y= a(2).*Pb + a(1);
plot(Pb, y, 'k')
ylabel('Ca(ppm)')
xlabel('Pb(ppm)')
legendinfo = ['[Ca] = ' num2str(a(2)) ' [Pb] + ' num2str(a(1)) ' where R = ' num2str(r)];
legend ('data', legendinfo)
hold off
%with Br
subplot(2,2,4)
scatter(Br,Ca)
hold on
[a, sa, cov, r]= linfit(Br, Ca,0) ;
y= a(2).*Br + a(1);
plot(Br, y, 'k')
ylabel('Ca(ppm)')
xlabel('Br (ppm)')
legendinfo = ['[Ca] = ' num2str(a(2)) ' [Br] + ' num2str(a(1)) ' where R = ' num2str(r)];
legend ('data', legendinfo)
hold off

figure
sgtitle('Linear regressions for Pb')
%with Cu
subplot(2,2,1)
scatter(Cu,Pb)
hold on
[a, sa, cov, r]= linfit(Cu, Pb,0) ;
y= a(2).*Cu + a(1);
plot(Cu, y, 'k')
ylabel('Pb(ppm)')
xlabel('Cu (ppm)')
legendinfo = ['[Pb] = ' num2str(a(2)) ' [Cu] + ' num2str(a(1)) ' where R = ' num2str(r)];
legend ('data', legendinfo)
hold off
%with Ni
subplot(2,2,2)
scatter(Ni,Pb)
hold on
[a, sa, cov, r]= linfit(Ni, Pb,0) ;
y= a(2).*Ni + a(1);
plot(Ni, y, 'k')
ylabel('Pb(ppm)')
xlabel('Ni (ppm)')
legendinfo = ['[Pb] = ' num2str(a(2)) ' [Ni] + ' num2str(a(1)) ' where R = ' num2str(r)];
legend ('data', legendinfo)
hold off
%with Ca
subplot(2,2,3)
scatter(Ca,Pb)
hold on
[a, sa, cov, r]= linfit(Ca, Pb,0) ;
y= a(2).*Ca + a(1);
plot(Ca, y, 'k')
ylabel('Pb(ppm)')
xlabel('Ca(ppm)')
legendinfo = ['[Pb] = ' num2str(a(2)) ' [Ca] + ' num2str(a(1)) ' where R = ' num2str(r)];
legend ('data', legendinfo)
hold off
%with Br
subplot(2,2,4)
scatter(Br,Pb)
hold on
[a, sa, cov, r]= linfit(Br, Pb,0) ;
y= a(2).*Br + a(1);
plot(Br, y, 'k')
ylabel('Pb(ppm)')
xlabel('Br (ppm)')
legendinfo = ['[Pb] = ' num2str(a(2)) ' [Br] + ' num2str(a(1)) ' where R = ' num2str(r)];
legend ('data', legendinfo)
hold off

%Ti and S
figure
scatter(S, Ti)
hold on
[a, sa, cov, r]= linfit(S, Ti,0) ;
y= a(2).*S + a(1);
plot(S, y, 'k')
title('Linear Regression Ti and S')
ylabel('Ti(ppm)')
xlabel('S (ppm)')
legendinfo = ['[Ti] = ' num2str(a(2)) ' [S] + ' num2str(a(1)) ' where R = ' num2str(r)];
legend ('data', legendinfo)
hold off


Matrix= excise([Zn, S, Mo, P, Ni]);
Zn=Matrix(:,1);
S= Matrix(:,2);
Mo= Matrix(:, 3);
P= Matrix(:, 4);
Ni= Matrix(:, 5);

figure
sgtitle('Linear regressions for Mo')
%with P
subplot(2,2,1)
scatter(P,Mo)
hold on
[a, sa, cov, r]= linfit(P, Mo,0) ;
y= a(2).*P + a(1);
plot(P, y, 'k')
ylabel('Mo(ppm)')
xlabel('P(ppm)')
legendinfo = ['[Mo] = ' num2str(a(2)) ' [P] + ' num2str(a(1)) ' where R = ' num2str(r)];
legend ('data', legendinfo)
hold off
%with Ni
subplot(2,2,2)
scatter(Ni,Mo)
hold on
[a, sa, cov, r]= linfit(Ni, Mo,0) ;
y= a(2).*Ni + a(1);
plot(Ni, y, 'k')
ylabel('Mo(ppm)')
xlabel('Ni (ppm)')
legendinfo = ['[Mo] = ' num2str(a(2)) ' [Ni] + ' num2str(a(1)) ' where R = ' num2str(r)];
legend ('data', legendinfo)
hold off
%with S
subplot(2,2,3)
scatter(S,Mo)
hold on
[a, sa, cov, r]= linfit(S, Mo,0) ;
y= a(2).*S + a(1);
plot(S, y, 'k')
ylabel('Mo(ppm)')
xlabel('S(ppm)')
legendinfo = ['[Mo] = ' num2str(a(2)) ' [S] + ' num2str(a(1)) ' where R = ' num2str(r)];
legend ('data', legendinfo)
hold off
%with Zn
subplot(2,2,4)
scatter(Zn,Mo)
hold on
[a, sa, cov, r]= linfit(Zn, Mo,0) ;
y= a(2).*Zn + a(1);
plot(Zn, y, 'k')
ylabel('Mo(ppm)')
xlabel('Zn (ppm)')
legendinfo = ['[Mo] = ' num2str(a(2)) ' [Zn] + ' num2str(a(1)) ' where R = ' num2str(r)];
legend ('data', legendinfo)
hold off


