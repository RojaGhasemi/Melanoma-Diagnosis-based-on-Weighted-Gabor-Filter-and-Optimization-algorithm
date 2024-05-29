function mip = Mutation_Inversion_Permutation(population, probability)

    rnd = URandom(0,1);
    
    if rnd > probability
        
        [row, col] = size(population);
        
        gen1 = floor(URandom(0, col));
        gen2 = floor(URandom(0, col));
        if gen1<gen2
            p1=gen1;
            p2=gen2;
        else
            p1=gen2;
            p2=gen1;
        end
        if p1==0
            p1=1;
        end
        if p2==0
            p2=1;
        end
           
        if p1==p2 && p2==col
            p1=p2-1;
        end
        if p1==p2 && p1==1
            p2=p1+1;
        end
        
        chromosome =ceil(URandom(0, row));
        
        mip(1:p1) = population( chromosome,1:p1); 
        mip(p1:p2) = flipdim(population(chromosome,p1:p2),2);
        mip(p2:col)=population(chromosome,p2:col);
        
    else
        mip = 0;        
    end % if probability

end % function