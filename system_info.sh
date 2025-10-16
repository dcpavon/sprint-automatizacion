#!/bin/bash
echo "========================================" > logs/system_report.txt
echo "       REPORTE DE ESTADO DEL SISTEMA    " >> logs/system_report.txt
echo "========================================" >> logs/system_report.txt
echo "Fecha del reporte: $(date)" >> logs/system_report.txt
echo "" >> logs/system_report.txt
echo "--- USUARIOS CONECTADOS (who) ---" >> logs/system_report.txt
who >> logs/system_report.txt
echo "" >> logs/system_report.txt
echo "--- USO DE CPU (top - resumen) ---" >> logs/system_report.txt
top -bn1 | head -n 1 >> logs/system_report.txt
echo "" >> logs/system_report.txt
echo "--- USO DE MEMORIA (free -h) ---" >> logs/system_report.txt
free -h >> logs/system_report.txt
echo "" >> logs/system_report.txt
echo "--- ESPACIO EN DISCO (df -h) ---" >> logs/system_report.txt
df -h >> logs/system_report.txt
echo "" >> logs/system_report.txt
echo "--- ÚLTIMOS 10 ERRORES DEL SISTEMA (dmesg | tail -10) ---" >> logs/system_report.txt
sudo dmesg | tail -10 >> logs/system_report.txt
echo "" >> logs/system_report.txt
echo "========================================" >> logs/system_report.txt
echo "REPORTE COMPLETO EN logs/system_report.txt" >> logs/system_report.txt
