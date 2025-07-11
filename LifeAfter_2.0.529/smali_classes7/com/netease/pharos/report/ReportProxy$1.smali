.class Lcom/netease/pharos/report/ReportProxy$1;
.super Ljava/lang/Object;
.source "ReportProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/pharos/report/ReportProxy;->report(Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/report/ReportProxy;

.field final synthetic val$info:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/pharos/report/ReportProxy;Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/netease/pharos/report/ReportProxy$1;->this$0:Lcom/netease/pharos/report/ReportProxy;

    iput-object p2, p0, Lcom/netease/pharos/report/ReportProxy$1;->val$info:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 46
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/PharosProxy;->isOversea()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://netlink-sigma.proxima.nie.easebar.com"

    goto :goto_0

    :cond_0
    const-string v0, "https://netlink-sigma.proxima.nie.netease.com"

    .line 48
    :goto_0
    new-instance v1, Lcom/netease/pharos/report/ReportCore;

    invoke-direct {v1}, Lcom/netease/pharos/report/ReportCore;-><init>()V

    .line 49
    invoke-virtual {v1, v0}, Lcom/netease/pharos/report/ReportCore;->init(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/netease/pharos/report/ReportProxy$1;->val$info:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/netease/pharos/report/ReportCore;->start(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
