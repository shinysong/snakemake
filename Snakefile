FILENAMES = ['A', 'B', 'C']
        
rule all:
    """기본 규칙은 가장 앞에 위치해야함"""
    input: "temp/wc_all.png"
    
rule count:
    """파일내 단어 수 세기."""
    input:
        "data/{filename}.txt"
    output:
        "temp/wc_{filename}.txt"
    shell:
        "powershell -Command \"(Get-Content '{input}' | Measure-Object -Word).Words\" > {output}"

rule concat:
    """개별 단어 수 파일을 병합."""
    input:
        expand("temp/wc_{filename}.txt", filename=FILENAMES)
    output:
        "temp/wc_all.csv"
    script:
        "concat.py"


rule plot:
    """그래프 그리기."""
    input:
        "temp/wc_all.csv"
    output:
        "temp/wc_all.png"
    script:
        "plot.py"
        
