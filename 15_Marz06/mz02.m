clc;clear;
dx = .1;
x1 = -6:dx:6;
y1 = sinc(x1);
% plot(x1,y1,'linewidth',2);
% grid; axis([-6 6 -.5 1.3]);

largo = 1;
% hold on
[max_y,i] = max(y1)
x_max_y = x1(i)
% plot(x_max_y,max_y,'ro','MarkerSize',10,'Marker','square')
for j=1:length(x1)-1
    % capturar p1 y p2 (j y el j+1)
    p1 = [x1(j),y1(j)];
    p2 = [x1(j+1),y1(j+1)];
    [s,m,b] = ec_recta(p1,p2);
    x00 = x1(j)-largo;
    x01 = x1(j+1)+largo;
    y00 = m*x00+b;
    y01 = m*x01+b;
    plot(x1,y1,'linewidth',2);
    % plot([x00,x01],[y00,y01],'k');
    line([x00,x01],[y00,y01]);

    text(mean([x00,x01]),mean([y00,y01])-.1,['m = ' num2str(m)]);
    %text(0,-.1,'pendiente');
    % plot(x1(j),y1(j),'go','MarkerSize',10,'Marker','square')
    grid; axis([-6 6 -.5 1.3]);
    pause(.2)
end
% hold off