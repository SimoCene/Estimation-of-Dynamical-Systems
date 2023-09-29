function [Theta] = MyLS(y,n,H)
% Least Square estimation
% y --> Output data
% n --> model order 
% H --> Hankel matrix [N-n,n] for Type of the mode {'AR', 'ARX'}
% Theta --> Parameter estimated
p = size(H, 2);
N = size(H, 1);
Y=y(1+n:end);

Theta=zeros(p,1);
Theta=((H'*H)/N)\((H'*Y)/N);

% if rank(H)<p
%     error('rank(H)=%d -->the hankel matrix is not full rank!\n SYSTEM NOT IDENTIFIABLE!',rank(H))
% end
% end


%% Troppo effort per niente
% %% Least Square estimation
% % function [Theta]= LS(y,u,n)
% % y --> Output data
% % n --> model order 
% % model --> Type of the mode {'AR', 'ARX'}
% % u --> Input data
% % Theta --> Parameter estimated
% function [Theta] = LS (y,n,model,u)
% arguments
%     y
%     n
%     model (1,1) string {mustBeText}
%     u
% end
% if nargin < 4
%     u = 0; % Valore predefinito per u
% end
% 
% switch  model
% % ARX Model
%     case ARX
%         p = 2*n;
% 
%         Y=y(1+n:end);
%         Hu = Hankel(u,n);
%         Hy = Hankel(y,n); 
%         H=[-Hy Hu];
% % ARX Model
%     case AR
%         p = n;
% 
%         Y=y(1+n:end);
%         Hy = Hankel(y,n); 
%         H=[-Hy];
%     otherwise
%         error('model structure not available!')
% end
% 
% Theta=zeros(p,1);
% Theta=pinv(H'*H)*(H'*Y);
% % theta=pinv((H'*H)/N)*((H'*Y)/N);
% % N=length(y)-n;
% 
% if rank(H)<p
%     error('rank(H)=%d -->the hankel matrix is not full rank!\n SYSTEM NOT IDENTIFIABLE!',rank(H))
% end
% 
% end