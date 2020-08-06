function mpc = caseD33_all
%CASE33    Power flow data for 33 bus distribution case.
%   Please see CASEFORMAT for details on the case file format.
%
%   Based on data from ...
%     Alsac, O. & Stott, B., "Optimal Load Flow with Steady State Security",
%     IEEE Transactions on Power Apparatus and Systems, Vol. PAS 93, No. 3,
%     1974, pp. 745-751.
%   ... with branch parameters rounded to nearest 0.01, shunt values divided
%   by 100 and shunt on bus 10 moved to bus 5, load at bus 5 zeroed out.
%   Generator locations, costs and limits and bus areas were taken from ...
%     Ferrero, R.W., Shahidehpour, S.M., Ramesh, V.C., "Transaction analysis
%     in deregulated power systems using game theory", IEEE Transactions on
%     Power Systems, Vol. 12, No. 3, Aug 1997, pp. 1340-1347.
%   Generator Q limits were derived from Alsac & Stott, using their Pmax
%   capacities. V limits and line |S| limits taken from Alsac & Stott.

%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 100;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [ 
1	3	0	0	0	0	1	1	0	12.66	1	1.05	0.95
2	1	0.1	0.06	0	0	1	1	0	12.66	1	1.05	0.95
3	1	0.09	0.04	0	0	1	1	0	12.66	1	1.05	0.95
4	1	0.12	0.08	0	0	1	1	0	12.66	1	1.05	0.95
5	1	0.06	0.03	0	0	1	1	0	12.66	1	1.05	0.95
6	1	0.06	0.02	0	0	1	1	0	12.66	1	1.05	0.95
7	1	0.2	0.1	0	0	1	1	0	12.66	1	1.05	0.95
8	1	0.2	0.1	0	0	1	1	0	12.66	1	1.05	0.95
9	1	0.06	0.02	0	0	1	1	0	12.66	1	1.05	0.95
10	1	0.06	0.02	0	0	1	1	0	12.66	1	1.05	0.95
11	1	0.045	0.03	0	0	1	1	0	12.66	1	1.05	0.95
12	1	0.06	0.035	0	0	1	1	0	12.66	1	1.05	0.95
13	1	0.06	0.035	0	0	1	1	0	12.66	1	1.05	0.95
14	1	0.12	0.08	0	0	1	1	0	12.66	1	1.05	0.95
15	1	0.06	0.01	0	0	1	1	0	12.66	1	1.05	0.95
16	1	0.06	0.02	0	0	1	1	0	12.66	1	1.05	0.95
17	1	0.06	0.02	0	0	1	1	0	12.66	1	1.05	0.95
18	1	0.09	0.04	0	0	1	1	0	12.66	1	1.05	0.95
19	1	0.09	0.04	0	0	1	1	0	12.66	1	1.05	0.95
20	1	0.09	0.04	0	0	1	1	0	12.66	1	1.05	0.95
21	1	0.09	0.04	0	0	1	1	0	12.66	1	1.05	0.95
22	1	0.09	0.04	0	0	1	1	0	12.66	1	1.05	0.95
23	1	0.09	0.05	0	0	1	1	0	12.66	1	1.05	0.95
24	1	0.42	0.2	0	0	1	1	0	12.66	1	1.05	0.95
25	1	0.42	0.2	0	0	1	1	0	12.66	1	1.05	0.95
26	1	0.06	0.025	0	0	1	1	0	12.66	1	1.05	0.95
27	1	0.06	0.025	0	0	1	1	0	12.66	1	1.05	0.95
28	1	0.06	0.02	0	0	1	1	0	12.66	1	1.05	0.95
29	1	0.12	0.07	0	0	1	1	0	12.66	1	1.05	0.95
30	1	0.2	0.6	0	0	1	1	0	12.66	1	1.05	0.95
31	1	0.15	0.07	0	0	1	1	0	12.66	1	1.05	0.95
32	1	0.21	0.1	0	0	1	1	0	12.66	1	1.05	0.95
33	1	0.06	0.04	0	0	1	1	0	12.66	1	1.05	0.95
34	3	0	0	0	0	1	1	0	12.66	1	1.05	0.95
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
1	2	0	5	-5	1	100	1	5	0	0	0	0	0	0	0	0	0	0	0	0
34	2	0	5	-5	1	100	1	5	0	0	0	0	0	0	0	0	0	0	0	0
];





%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
1	2	0.057525912	0.029324489	0	100	0	0	0	0	0	0	0
2	3	0.307595167	0.15666764	0	100	0	0	0	0	0	0	0
3	4	0.228356656	0.116299674	0	100	0	0	0	0	0	0	0
4	5	0.237777928	0.121103899	0	100	0	0	0	0	0	0	0
5	6	0.510994811	0.441115179	0	100	0	0	0	0	0	0	0
6	7	0.116798814	0.386084969	0	100	0	0	0	0	0	0	0
7	8	0.44386045	0.146684835	0	100	0	0	0	0	0	0	0
8	9	0.642643047	0.461704714	0	100	0	0	0	0	0	0	0
9	10	0.651378001	0.461704714	0	100	0	0	0	0	0	0	0
10	11	0.122663712	0.040555144	0	100	0	0	0	0	0	0	0
11	12	0.233597628	0.077241951	0	100	0	0	0	0	0	0	0
12	13	0.915922324	0.720633708	0	100	0	0	0	0	0	0	0
13	14	0.337917936	0.444796338	0	100	0	0	0	0	0	0	0
14	15	0.368739846	0.328184702	0	100	0	0	0	0	0	0	0
15	16	0.465635443	0.340039282	0	100	0	0	0	0	0	0	0
16	17	0.804239697	1.073775422	0	100	0	0	0	0	0	0	0
17	18	0.456713311	0.358133116	0	100	0	0	0	0	0	0	0
2	19	0.102323747	0.097644308	0	100	0	0	0	0	0	0	0
19	20	0.938508419	0.845668336	0	100	0	0	0	0	0	0	0
20	21	0.255497406	0.298485858	0	100	0	0	0	0	0	0	0
21	22	0.442300637	0.584805173	0	100	0	0	0	0	0	0	0
3	23	0.28151509	0.192356167	0	100	0	0	0	0	0	0	0
23	24	0.560284909	0.442425422	0	100	0	0	0	0	0	0	0
24	25	0.559037059	0.43743402	0	100	0	0	0	0	0	0	0
6	26	0.126656834	0.064513875	0	100	0	0	0	0	0	0	0
26	27	0.177319567	0.090281989	0	100	0	0	0	0	0	0	0
27	28	0.660736881	0.582559042	0	100	0	0	0	0	0	0	0
28	29	0.501760717	0.437122057	0	100	0	0	0	0	0	0	0
29	30	0.316642084	0.161284687	0	100	0	0	0	0	0	0	0
30	31	0.607952801	0.600840053	0	100	0	0	0	0	0	0	0
31	32	0.193728802	0.225798562	0	100	0	0	0	0	0	0	0
32	33	0.212758523	0.330805188	0	100	0	0	0	0	0	0	0
8	21	1.247850577	1.247850577	0	100	0	0	0	0	0	0	0
9	15	1.247850577	1.247850577	0	100	0	0	0	0	0	0	0
12	22	1.247850577	1.247850577	0	100	0	0	0	0	0	0	0
18	33	0.311962644	0.311962644	0	100	0	0	0	0	0	0	0
25	29	0.311962644	0.311962644	0	100	0	0	0	0	0	0	0
34	15	0.057525912	0.029324489	0	100	0	0	0	0	0	0	0
];

%%-----  OPF Data  -----%%
%% generator cost data
%	1	startup	shutdown	n	x1	y1	...	xn	yn
%	2	startup	shutdown	n	c(n-1)	...	c0
% mpc.gencost = [
% 	2	0	0	2	1	0;
% ];

%% cost data
mpc.C_il=20;  %inv constant for branch %each km
mpc.C_iSS=500; %inv cosntant fot substation %each one
mpc.C_iP=20; %inv constant fot gen %each one

mpc.C_ml=2;  %mantain constant for branch
mpc.C_mSS=20; % cosntant fot substation
mpc.C_mP=1; % constant fot gen

mpc.C_eSS=0.04;  %energy cost constant for substation
mpc.C_loss=0.05;  %loss cost constant for branch

mpc.I=0.03; % Annual interest rate
mpc.ro=1.3238/1.609344;
mpc.xo=1.3569/1.609344;

%% block and stage
mpc.Stage_n=3; %stage numbers
mpc.Block_n=6; %block numbers

%% DG
mpc.umax=1.2;                                                      %###########
mpc.umin=0;
mpc.DGp=[0,0.6,1;                                                  %###########important change
     0,0.6,1;
     0,0.6,1;
     0,0.8,1;
     0,0.8,1;
     0,0.8,1]';
 
%% load plan
mpc.MakeTurn = [16 19; 16 19; 16 19; 16 23; 16 23; 16 23];
MT = mpc.MakeTurn;
nb = length(mpc.bus(:,1));
mpc.BusOff=zeros(nb,mpc.Stage_n,mpc.Block_n);
mpc.BusOff(MT(1,1):33,1,1)=1;                                        %#########
mpc.BusOff(MT(1,2):33,2,1)=1;
mpc.BusOff(MT(2,1):33,1,2)=1;
mpc.BusOff(MT(2,2):33,2,2)=1;
mpc.BusOff(MT(3,1):33,1,3)=1;
mpc.BusOff(MT(3,2):33,2,3)=1;
mpc.BusOff(MT(4,1):33,1,4)=1;
mpc.BusOff(MT(4,2):33,2,4)=1;
mpc.BusOff(MT(5,1):33,1,5)=1;
mpc.BusOff(MT(5,2):33,2,5)=1;
mpc.BusOff(MT(6,1):33,1,6)=1;
mpc.BusOff(MT(6,2):33,2,6)=1;

%% Probability of occurrence
mpc.Ta=zeros(1,mpc.Stage_n,mpc.Block_n);
mpc.Ta(:,1,:) = 1;
mpc.Ta(:,2,1:3) = 0.3;mpc.Ta(:,2,4:6) = 0.7;
mpc.Ta(:,3,1) = 0.1;mpc.Ta(:,3,2) = 0.6;mpc.Ta(:,3,3)= 0.3;mpc.Ta(:,3,4) = 0.5;mpc.Ta(:,3,5) = 0.2;mpc.Ta(:,3,6)= 0.3;
mpc.pT = prod(mpc.Ta,2);