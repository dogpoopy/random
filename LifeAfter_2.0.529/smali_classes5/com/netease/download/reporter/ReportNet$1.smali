.class Lcom/netease/download/reporter/ReportNet$1;
.super Ljava/lang/Object;
.source "ReportNet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/download/reporter/ReportNet;->report(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/download/reporter/ReportNet;

.field final synthetic val$info:Ljava/lang/String;

.field final synthetic val$logDelay:I


# direct methods
.method constructor <init>(Lcom/netease/download/reporter/ReportNet;Ljava/lang/String;I)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/netease/download/reporter/ReportNet$1;->this$0:Lcom/netease/download/reporter/ReportNet;

    iput-object p2, p0, Lcom/netease/download/reporter/ReportNet$1;->val$info:Ljava/lang/String;

    iput p3, p0, Lcom/netease/download/reporter/ReportNet$1;->val$logDelay:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/netease/download/reporter/ReportNet$1;->this$0:Lcom/netease/download/reporter/ReportNet;

    iget-object v1, p0, Lcom/netease/download/reporter/ReportNet$1;->val$info:Ljava/lang/String;

    iget v2, p0, Lcom/netease/download/reporter/ReportNet$1;->val$logDelay:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/netease/download/reporter/ReportNet;->access$000(Lcom/netease/download/reporter/ReportNet;Ljava/lang/String;ZI)I

    return-void
.end method
