<h1 align="center">HR Attrition Analysis</h1>

<p align="center">
  <b>SQL + Python | IBM HR Analytics Dataset</b><br>
  <sub>Finding why employees leave — and what it's actually costing the company</sub>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/MySQL-8.0-blue?logo=mysql&logoColor=white" />
  <img src="https://img.shields.io/badge/Python-3.x-green?logo=python&logoColor=white" />
</p>

---

## The Short Version

237 employees left. That is 16% of the workforce.

Using a standard 6-month replacement cost, this company is spending roughly **$6.8 million** to replace people who left — and the exits are not random. They are concentrated in the same roles, under the same conditions, for the same reasons.

This analysis finds exactly where the bleeding is happening — and shows that fixing overtime, pay, and early-career retention can cut attrition significantly and save millions per cycle.

---

## The Core Business Problem

Attrition here is not a company-wide crisis. It is a concentrated problem.

A small group — primarily Sales Representatives working overtime and earning below market rate — is responsible for a disproportionate share of the total cost. The rest of the company is comparatively stable. This means broad, company-wide policies will not work. The fix needs to be targeted at specific roles, under specific conditions.

If the company ignores this, the $6.8M replacement cost repeats every single cycle. If the targeted fixes are applied, the data shows attrition in the highest-risk groups can drop significantly — with measurable financial impact.

---

## The Single Biggest Finding

**Sales Representatives working overtime leave at 66.7%.**

Two out of every three Sales Reps working overtime will quit. This is not a small pattern. It is the loudest signal in the entire dataset.

![Risk Profile](images/Comprehensive_Risk_Profile_Large.png)

---

## What the Numbers Show

| Area | Number | What It Means |
|---|---|---|
| Overall attrition | 16.12% | 237 out of 1,470 employees left |
| Estimated replacement cost | ~$6.8M | 237 × $4,787 avg salary × 6 months |
| Overtime vs no overtime | 30.5% vs 10.4% | Nearly 3x higher attrition for overtime workers |
| Sales Reps on overtime | 66.7% | Highest risk group in the entire dataset |
| Lab Technicians on overtime | ~50% | 3x their no-overtime rate |
| Pay gap | $4,787 vs $6,833/month | Leavers earned $2,046 less — confirmed by t-test (p < 0.05) |
| Youngest employees (18–25) | 35.8% attrition | More than double the company average |
| Early leavers avg tenure | 5.1 years | vs 7.4 years for employees who stayed |

---

## Why This Keeps Happening

### Overtime is burning people out

The same role behaves completely differently depending on overtime load. Lab Technicians without overtime leave at ~16%. With overtime, that number jumps to ~50%. The role did not change. The workload did.

Overtime is the single strongest factor in this dataset. Nothing else creates a gap this large.

![Overtime vs Attrition](images/Overtime_Attrition.png)

---

### Pay is below what people will accept

Employees who left were earning $2,046 less per month than those who stayed. This gap exists in every department — it is not a Sales problem or an HR problem. It is a company-wide pattern.

A t-test confirms this is not a coincidence (p < 0.05). The income difference is real.

![Income vs Attrition](images/Monthly_Income_Attrition.png)

![Income by Department](images/Income_department_Attrition.png)

---

### Some roles carry much higher risk than others

Sales Representatives leave at 39.8% — nearly 10x higher than Research Directors at 4%. The gap between roles is not small. Attrition is heavily concentrated in a few specific positions.

![Job Role Attrition](images/JobRole_Attrition_Final.png)

Sales as a department has the highest attrition at 20.6%, followed by HR at 19.1%. R&D is the most stable at 13.8%.

![Department Attrition](images/Department_Attrition_Final.png)

---

### Early career employees leave the fastest

Most people who leave do it in the first five years. Employees who left had an average tenure of 5.1 years, compared to 7.4 years for those who stayed.

The 18–25 age group leaves at 35.8% — the highest of any age bracket. This group is not leaving because they hate the company. They are leaving because they cannot see where they are going.

![Tenure vs Attrition](images/Tenure_Attrition.png)

![Age Group Attrition](images/Age_Group_Attrition.png)

---

### No single factor explains everything

The correlation heatmap shows that no individual column strongly predicts attrition on its own. Attrition happens when multiple problems stack together — low pay, overtime, early career stage, and role type all compound each other.

![Correlation Matrix](images/Correlation_Matrix_HighVis.png)

Other patterns worth noting:
- Single employees leave at 25.5% vs 12.5% for married employees — likely because they are younger, not because of marital status itself
- Job satisfaction level 1 has 22.8% attrition vs 11.3% at level 4 — satisfaction matters, but it is not the root cause

![Marital Status](images/Marital_Attrition.png)
![Satisfaction vs Attrition](images/Satisfaction_Attrition.png)

---

## Statistical Validation

To confirm the income gap is real and not just a coincidence, I ran an independent-samples t-test comparing the monthly income of employees who left vs those who stayed.

- **T-statistic: -6.20**
- **P-value: < 0.05**

The result is statistically significant. Employees who left were genuinely earning less. This is not random variation in the data.

---

## Risk Prioritization

I scored each employee group by combining attrition rate, group size, and statistical significance — so the focus goes to groups that are both high-risk and large enough to actually matter, not just small groups with extreme but unreliable numbers.

![Risk Priority](images/TopRiskPriorityBars_Premium.png)

The top three risk groups:
- Sales Representatives on overtime → 66.7% attrition
- Laboratory Technicians on overtime → ~50% attrition
- Research Scientists on overtime → ~34% attrition

---

## What Should Be Done

| Problem | Action | Expected Impact |
|---|---|---|
| Sales Reps on overtime leaving at 66.7% | Cap overtime in Sales, redistribute workload | Brings attrition toward company average — retains ~50 Sales Reps per cycle, saves ~$1.4M |
| Pay below market for high-risk roles | Salary review for Lab Technicians, Research Scientists, Sales Reps | Replacing one employee costs ~$28K. A $700/month raise costs $8,400/year and pays back in under 4 months |
| Early-career employees leaving fast | Structured check-ins at 6, 12, 24 months. Clear growth path for employees under 25 | 20% reduction in early-tenure attrition retains ~47 additional employees — saves ~$1.35M |
| Over-reliance on satisfaction surveys | Fix overtime and pay first, then measure satisfaction | Satisfaction matters but is not the root cause — a satisfied employee working overtime and earning below market will still leave |

**Fix overtime first. Then pay. Then early-career support. In that order.**

If nothing changes, the $6.8M replacement cost repeats every cycle. The data shows that targeting these three areas specifically — not broad company-wide policies — is where the highest return is.

This analysis shows that attrition is not a vague HR issue — it is a measurable, high-cost problem with clear, data-backed fixes.

---

## Top 5 Roles by Total Exits

Lab Technicians and Sales Executives lose the most employees in raw numbers, partly because they are larger teams. High total exits do not always mean the highest risk — but they do mean the highest replacement cost in absolute terms.

![Top 5 Attrition](images/Top_5_Attrition.png)

---

## Limitations

- This is pattern analysis, not a prediction model. I identified risk factors — not which specific employee will leave next.
- Correlation is not causation. Single employees leaving more is likely because they are younger, not because of their marital status.
- The dataset is fictional (created by IBM). Dollar figures use industry-standard benchmarks, not real company financials.

---

## Dataset

- **Source:** [IBM HR Analytics Employee Attrition & Performance](https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset)
- **Size:** 1,470 employees, 35 columns
- **Data quality:** No missing values, no duplicates, all values within valid ranges

---

## Tools Used

| Tool | Purpose |
|---|---|
| **MySQL** | Core analysis — attrition by department, role, income, overtime, age, tenure |
| **Python (Pandas)** | Reshaping SQL results for deeper analysis |
| **Matplotlib & Seaborn** | All visualizations |
| **SciPy** | Independent-samples t-test for income validation |
| **Jupyter Notebook** | Full analysis in one place, start to finish |

---

## How to Run This

1. Clone this repo
2. Make sure you have Python, MySQL, and Jupyter Notebook installed
3. Import the CSV into MySQL (table name: `hr_attrition`, database: `hr`)
4. Open `notebooks/hr_attrition_analysis.ipynb` and update the MySQL connection credentials
5. Run all cells

**Libraries needed:**
```
pandas
matplotlib
seaborn
mysql-connector-python==8.0.33
scipy
numpy
```

---

## Project Structure

```
hr-attrition-analysis/
│
├── notebooks/
│   └── hr_attrition_analysis.ipynb     ← Full analysis (SQL + Python + Charts)
├── data_setup.sql                       ← MySQL table setup
├── README.md                            ← You are reading this
└── images/                              ← All chart exports
    ├── Department_Attrition_Final.png
    ├── JobRole_Attrition_Final.png
    ├── Monthly_Income_Attrition.png
    ├── Overtime_Attrition.png
    ├── Tenure_Attrition.png
    ├── Age_Group_Attrition.png
    ├── Top_5_Attrition.png
    ├── Satisfaction_Attrition.png
    ├── Income_department_Attrition.png
    ├── Marital_Attrition.png
    ├── Comprehensive_Risk_Profile_Large.png
    ├── Correlation_Matrix_HighVis.png
    └── TopRiskPriorityBars_Premium.png
```

---

## Author

**Ashish Kumar Dongre**

🔗 [LinkedIn](https://www.linkedin.com/in/analytics-ashish/) &nbsp;|&nbsp; 💻 [GitHub](https://github.com/analytics-ak/hr-attrition-analysis) &nbsp;|&nbsp; 📂 [Dataset on Kaggle](https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset)
