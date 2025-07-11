.class public Lcom/netease/pharos/report/ReportProxy;
.super Ljava/lang/Object;
.source "ReportProxy.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ReportProxy"

.field public static sReportProxy:Lcom/netease/pharos/report/ReportProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/netease/pharos/report/ReportProxy;
    .locals 1

    .line 28
    sget-object v0, Lcom/netease/pharos/report/ReportProxy;->sReportProxy:Lcom/netease/pharos/report/ReportProxy;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/netease/pharos/report/ReportProxy;

    invoke-direct {v0}, Lcom/netease/pharos/report/ReportProxy;-><init>()V

    sput-object v0, Lcom/netease/pharos/report/ReportProxy;->sReportProxy:Lcom/netease/pharos/report/ReportProxy;

    .line 31
    :cond_0
    sget-object v0, Lcom/netease/pharos/report/ReportProxy;->sReportProxy:Lcom/netease/pharos/report/ReportProxy;

    return-object v0
.end method


# virtual methods
.method public report(Ljava/lang/String;)I
    .locals 3

    .line 37
    invoke-static {}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->getInstances()Lcom/netease/pharos/locationCheck/NetAreaInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->ismLogUpload()Z

    move-result v0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReportProxy [report] \u662f\u5426\u4e0a\u4f20\u65e5\u5fd7="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReportProxy"

    invoke-static {v2, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/pharos/report/ReportProxy$1;

    invoke-direct {v1, p0, p1}, Lcom/netease/pharos/report/ReportProxy$1;-><init>(Lcom/netease/pharos/report/ReportProxy;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 52
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    const/16 p1, 0xb

    return p1
.end method
