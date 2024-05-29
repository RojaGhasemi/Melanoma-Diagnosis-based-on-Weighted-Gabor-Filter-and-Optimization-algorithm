function Out=FeatureVector(t1)
% % % clear all;
% % % close all;
% % % clc;
Tempi=[t1];
L=1;
i=1; j=1;
counter=1;
% for i=1:3
%     for j=1:6
     [Ec Er]=size(Tempi(1,1).data{1,1});
     d=Tempi(1,1).data{1,1};
     
     Out1(L:Ec,L:Er)=d;
     
     d=Tempi(1,1).data{1,2};
     Out2(L:Ec,L:Er)=d;
     
       d=Tempi(1,1).data{1,3};
     Out3(L:Ec,L:Er)=d;
     
       d=Tempi(1,1).data{1,4};
     Out4(L:Ec,L:Er)=d;
     
        d=Tempi(1,1).data{1,5};
     Out5(L:Ec,L:Er)=d;
     
        d=Tempi(1,1).data{1,6};
     Out6(L:Ec,L:Er)=d;
     
     
      d=Tempi(1,2).data{1,1};
     Out7(L:Ec,L:Er)=d;
     
     d=Tempi(1,2).data{1,2};
     Out8(L:Ec,L:Er)=d;
     
       d=Tempi(1,2).data{1,3};
     Out9(L:Ec,L:Er)=d;
     
       d=Tempi(1,2).data{1,4};
     Out10(L:Ec,L:Er)=d;
     
        d=Tempi(1,2).data{1,5};
     Out11(L:Ec,L:Er)=d;
     
        d=Tempi(1,2).data{1,6};
     Out12(L:Ec,L:Er)=d;
     
     
       d=Tempi(1,3).data{1,1};
     Out13(L:Ec,L:Er)=d;
     
     d=Tempi(1,3).data{1,2};
     Out14(L:Ec,L:Er)=d;
     
       d=Tempi(1,3).data{1,3};
     Out15(L:Ec,L:Er)=d;
     
       d=Tempi(1,3).data{1,4};
     Out16(L:Ec,L:Er)=d;
     
        d=Tempi(1,3).data{1,5};
     Out17(L:Ec,L:Er)=d;
     
        d=Tempi(1,3).data{1,6};
     Out18(L:Ec,L:Er)=d;

% for i=1:1890
    Out(1:210,1:210)=Out1(1:210,1:210);
    Out(1:210,211:420)=Out2(1:210,1:210);
    Out(1:210,421:630)=Out3(1:210,1:210);
    Out(1:210,631:840)=Out4(1:210,1:210);
     Out(1:210,841:1050)=Out5(1:210,1:210);
      Out(1:210,1051:1260)=Out6(1:210,1:210);
     
     Out(211:420,1:210)=Out7(1:210,1:210);
    Out(211:420,211:420)=Out8(1:210,1:210);
    Out(211:420,421:630)=Out9(1:210,1:210);
    Out(211:420,631:840)=Out10(1:210,1:210);
     Out(211:420,841:1050)=Out11(1:210,1:210);
      Out(211:420,1051:1260)=Out12(1:210,1:210);
      
       Out(421:630,1:210)=Out13(1:210,1:210);
    Out(421:630,211:420)=Out14(1:210,1:210);
    Out(421:630,421:630)=Out15(1:210,1:210);
    Out(421:630,631:840)=Out16(1:210,1:210);
     Out(421:630,841:1050)=Out17(1:210,1:210);
      Out(421:630,1051:1260)=Out18(1:210,1:210);
 end