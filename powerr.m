%for power
%sampsizepwr('test type (z or t)', [mu0,S], muA, [], n, 'tail', 'both/right/left', 'alpha', a)
sampsizepwr('z',[80,5],82,[],50,'tail','right','alpha',0.05)

%for samp size
%sampsizepwr('test type (z or t)', [mu0,S], muA, Power, [], 'tail', 'both/right/left', 'alpha', a)
sampsizepwr('z',[80,7],81,0.90,[],'tail','right','alpha',0.05)

%[] indicates what you're looking for
