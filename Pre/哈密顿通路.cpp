#include<iostream>
#include<cstdio>
#include<vector>
using namespace std;
int bian[8][8];
int n,m;
int ap[8];
int path[8];
void print()
{
	for(int i=0;i<n;i++)
	{
		cout<<path[i]<<' ';
	}
}
int isHamilton_begin_end(int cur,int end,int cnt)
{
	if(cur==end)
	{
		path[cnt]=end;
		return cnt==n-1;
	}	
	else
	{
		ap[cur]=1;
		path[cnt]=cur;
		for(int i=1;i<=n;i++)
		{
			if(bian[cur][i]==1&&ap[i]==0)
			{
				ap[i]=1;
				path[cnt+1]=i;
				if(isHamilton_begin_end(i,end,cnt+1)) 
				{
					return 1;
				}
				ap[i]=0;
			}
		}
	}
	return 0;
}
int isHamilton()
{
	for(int i=1;i<=n;i++)
	{
		for(int j=1;j<=n;j++)
		{
			if(isHamilton_begin_end(i,j,0)) return 1;
		}
	}
	return 0;
}
int main()
{
	cin>>n>>m;
	for(int i=1;i<=m;i++)
	{
		int a,b;
		cin>>a>>b;
		bian[b][a]=bian[a][b]=1;
	}
	cout<<"**********\n"; 
	cout<<isHamilton()<<endl;
	print();
	return 0;
}
/*
5 6
1 2
1 3
2 3
2 4
1 4
4 5
*/
