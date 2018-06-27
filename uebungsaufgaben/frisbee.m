function [ output_args ] = frisbee( input_args )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here


global M_0 T m_s m_z Ozz Oxx h e g;

a=x(1);
b=x(2);
apunkt=(x(3));
bpunkt=(x(4));


% 1Gl [Faktor ä , Faktor Bähh;
% 2Gl Faktor ä, Faktor Bähh]
% 
% mat=[Os1+m_1*s_1^2+m_2*a_1^2, m_2*a_1*s_2*cosd(a-b);
%      m_2*a_1*s_2*cosd(a-b), Os2+m_2*s_2^2
%     ];
% 
% %restliche Koeffs
% rechts=[ (m_2*a_1*s_2*bpunkt*sind(a-b)-(m_1*s_1+m_2*a_1)*g*sind(a));
%         (m_2*a_1*s_2*(apunkt^2)*sind(a-b)-m_2*s_2*g*sind(b))
%     ];   
% rechts=-rechts;
% 
% ypp=mat\rechts;
% apunktpunkt=ypp(1);
% bpunktpunkt=ypp(2);
% 
% xpunkt=[apunkt;bpunkt;apunktpunkt;bpunktpunkt];


end

