function Out=FeatureVector(t1)
Tempi=[t1];
L=1;
for counter=1:1
     [Ec Er]=size(Tempi(counter,1).data{1,1});
     O=MyGetCenter(Tempi(counter,:),Ec,Er);
     Out(L:L+length(O)-1)=O;
     L=L+length(O);
end
end