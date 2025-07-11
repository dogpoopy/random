.class Lcom/netease/download/reporter/ReportProxy$1;
.super Ljava/lang/Object;
.source "ReportProxy.java"

# interfaces
.implements Lcom/netease/download/reporter/ReportFile$FileCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/download/reporter/ReportProxy;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/download/reporter/ReportProxy;


# direct methods
.method constructor <init>(Lcom/netease/download/reporter/ReportProxy;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/netease/download/reporter/ReportProxy$1;->this$0:Lcom/netease/download/reporter/ReportProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ReportProxy"

    const-string v1, "ReportProxy [FileCallBack] [finish] \u6587\u4ef6\u843d\u5730\u5b8c\u6210\uff0c\u4e0a\u4f20\u65e5\u5fd7\u6587\u4ef6"

    .line 67
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/netease/download/reporter/ReporetCore;->getInstance()Lcom/netease/download/reporter/ReporetCore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/download/reporter/ReporetCore;->setOpen(Z)V

    .line 70
    invoke-static {}, Lcom/netease/download/reporter/ReportNet;->getInstances()Lcom/netease/download/reporter/ReportNet;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/netease/download/reporter/ReportNet;->reportFile(Ljava/lang/String;I)V

    return-void
.end method
