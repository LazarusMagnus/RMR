function krit = krit_fja(par, P, w)
     K = [par; par];
     Proba = lft(P,K);
     sig = sigma(Proba,w);
     if(isstable(Proba))
        krit= max(sig(1,:));
     else
        krit = 1e4+max(sig(1,:));
     end
end
