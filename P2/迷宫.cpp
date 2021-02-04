#include<cstdio>
#include<iostream>
using namespace std;
int a[8][8];
int cnt=0;
int n,m;
int to[4][2]={
	{0,1},
	{1,0},
	{0,-1},
	{-1,0}
};
void way(int sti,int stj,int edi,int edj){
	if(sti==edi&&stj==edj){
		cnt++;
		return;
	}
	else {
		a[sti][stj]=1;
		for(int i=0;i<4;i++){
			int nexti=sti+to[i][0];
			int nextj=stj+to[i][1];
			if(nexti>=1&&nexti<=n&&nextj>=1&&nextj<=m&&a[nexti][nextj]==0){
				a[nexti][nextj]=1;
				way(nexti,nextj,edi,edj);
				a[nexti][nextj]=0;
			}
		}
	}
	return;
}
int main()
{	
	cin>>n>>m;
	for(int i=1;i<=n;i++){
		for(int j=1;j<=m;j++){
			cin>>a[i][j];
		}
	}
	int beginx,beginy,endx,endy;
	cin>>beginx>>beginy>>endx>>endy;
	way(beginx,beginy,endx,endy);
	printf("%d",cnt);
	
	return 0;
}
