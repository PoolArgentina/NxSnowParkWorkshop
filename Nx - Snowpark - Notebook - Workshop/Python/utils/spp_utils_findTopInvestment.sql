create or replace function SNOWPARK_DEMO_DB.PUBLIC.FINDTOPINVESTMENT(val1 int, text1 text, val2 int, text2 text, val3 int, text3 text, val4 int, text4 text)
returns string
language python
runtime_version = '3.8'
handler = 'FINDTOPINVESTMENT'
as
$$
def findTopInvestment(val1, text1, val2, text2, val3, text3, val4, text4):
    values = {val1: text1, val2: text2, val3: text3, val4: text4}
    max_val = max(values)
    sum_val = sum(values)

    porc_val = round(max_val / sum_val * 100, 2)
    
    return f"{values[max_val]} with {porc_val} of total"
$$;