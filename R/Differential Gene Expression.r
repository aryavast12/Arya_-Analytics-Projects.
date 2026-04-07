rm(list=ls())
gc()

install.packages(c("rlang","vctrs","scales","gtable","ggplot2"), type="binary")

library(GEOquery)
library(limma)
library(Biobase)
library(ggplot2)

gset <- getGEO("GSE38417", GSEMatrix=TRUE)[[1]]

expr <- exprs(gset)
pdata <- pData(gset)

group <- ifelse(grepl("dystrophy", pdata$characteristics_ch1, ignore.case=TRUE),
                "DMD", "Control")
group <- factor(group)
table(group)

design <- model.matrix(~0+group)
colnames(design) <- levels(group)

fit <- lmFit(expr, design)
contrast <- makeContrasts(DMD-Control, levels=design)
fit2 <- contrasts.fit(fit, contrast)
fit2 <- eBayes(fit2)

deg <- topTable(fit2, number=Inf)
head(deg)

write.csv(deg, "DMD_DEG_results.csv")

deg$Significant <- ifelse(deg$adj.P.Val < 0.05 & abs(deg$logFC) > 1,
                          "Yes", "No")

library(ggplot2)

ggplot(deg, aes(logFC, -log10(adj.P.Val), color=Significant)) +
  geom_point(alpha=0.7) +
  theme_minimal() +
  labs(
    title="Volcano Plot – Duchenne Muscular Dystrophy vs Control",
    x="Log2 Fold Change",
    y="-log10 Adjusted P-value"
  )

ggsave("Volcano_DMD.png", width=7, height=5)

# Clean environment
rm(list=ls())
gc()

# Install required packages (run once)
install.packages(c("GEOquery", "limma", "Biobase", "ggplot2", "writexl"), dependencies=TRUE)

# Load libraries
library(GEOquery)
library(limma)
library(Biobase)
library(ggplot2)
library(writexl)

# Download GEO dataset
gset <- getGEO("GSE38417", GSEMatrix=TRUE)[[1]]

# Expression matrix and metadata
expr <- exprs(gset)
pdata <- pData(gset)

# Define groups (DMD vs Control)
group <- ifelse(grepl("dystrophy", pdata$characteristics_ch1, ignore.case=TRUE),
                "DMD", "Control")
group <- factor(group)

# Design matrix
design <- model.matrix(~0 + group)
colnames(design) <- levels(group)

# limma differential expression
fit <- lmFit(expr, design)
contrast <- makeContrasts(DMD - Control, levels=design)
fit2 <- contrasts.fit(fit, contrast)
fit2 <- eBayes(fit2)

# All DE results
deg <- topTable(fit2, number=Inf)

# ===============================
# SPLIT UP & DOWN REGULATED
# ===============================

upregulated <- deg[deg$adj.P.Val < 0.05 & deg$logFC > 1, ]
downregulated <- deg[deg$adj.P.Val < 0.05 & deg$logFC < -1, ]

# Add gene names
upregulated$Gene <- rownames(upregulated)
downregulated$Gene <- rownames(downregulated)

# Reorder columns
upregulated <- upregulated[, c("Gene", colnames(upregulated)[1:6])]
downregulated <- downregulated[, c("Gene", colnames(downregulated)[1:6])]

# ===============================
# EXPORT TO EXCEL
# ===============================

write_xlsx(
  list(
    Upregulated = upregulated,
    Downregulated = downregulated
  ),
  path = "DMD_DEGs.xlsx"
)

# ===============================
# OPTIONAL: Volcano plot
# ===============================

deg$Significant <- ifelse(deg$adj.P.Val < 0.05 & abs(deg$logFC) > 1,
                          "Yes", "No")

ggplot(deg, aes(logFC, -log10(adj.P.Val), color=Significant)) +
  geom_point(alpha=0.7) +
  theme_minimal() +
  labs(
    title="Volcano Plot – DMD vs Control",
    x="Log2 Fold Change",
    y="-log10 Adjusted P-value"
  )

ggsave("Volcano_DMD.png", width=7, height=5)
