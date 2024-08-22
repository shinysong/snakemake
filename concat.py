import re

# 출력용 csv 파일 오픈
with open(snakemake.output[0], 'wt') as f:
    f.write('fname, count\n')
    # snakefile에 명시된 모든 입력 파일에 대해서
    for fn in snakemake.input:
        # 파싱하고 출력
        line = open(fn, 'rt').read()
        cnt = line
        f.write('{}, {}\n'.format(fn, cnt))