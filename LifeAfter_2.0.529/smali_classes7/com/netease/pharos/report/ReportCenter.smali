.class public Lcom/netease/pharos/report/ReportCenter;
.super Ljava/lang/Object;
.source "ReportCenter.java"


# static fields
.field private static mNetmonReport:Lcom/netease/pharos/report/NetmonReport;

.field private static sHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 1

    .line 24
    sget-object v0, Lcom/netease/pharos/report/ReportCenter;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/netease/pharos/report/ReportCenter$1;

    invoke-direct {v0}, Lcom/netease/pharos/report/ReportCenter$1;-><init>()V

    sput-object v0, Lcom/netease/pharos/report/ReportCenter;->sHandler:Landroid/os/Handler;

    .line 46
    :cond_0
    sget-object v0, Lcom/netease/pharos/report/ReportCenter;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getNetmonReport()Lcom/netease/pharos/report/NetmonReport;
    .locals 1

    .line 50
    sget-object v0, Lcom/netease/pharos/report/ReportCenter;->mNetmonReport:Lcom/netease/pharos/report/NetmonReport;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/netease/pharos/report/NetmonReport;

    invoke-direct {v0}, Lcom/netease/pharos/report/NetmonReport;-><init>()V

    sput-object v0, Lcom/netease/pharos/report/ReportCenter;->mNetmonReport:Lcom/netease/pharos/report/NetmonReport;

    .line 53
    :cond_0
    sget-object v0, Lcom/netease/pharos/report/ReportCenter;->mNetmonReport:Lcom/netease/pharos/report/NetmonReport;

    return-object v0
.end method
