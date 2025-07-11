.class Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask$1;
.super Ljava/lang/Object;
.source "SdkNGShareCompat.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask;

.field final synthetic val$inst:Lcom/netease/ntunisdk/SdkNGShareCompat;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask;Lcom/netease/ntunisdk/SdkNGShareCompat;)V
    .locals 0

    .line 553
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask$1;->this$0:Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask;

    iput-object p2, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask$1;->val$inst:Lcom/netease/ntunisdk/SdkNGShareCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 556
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask$1;->this$0:Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask;->access$802(Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask;Z)Z

    .line 557
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask$1;->this$0:Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask;

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask;->cancel(Z)Z

    .line 558
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask$1;->val$inst:Lcom/netease/ntunisdk/SdkNGShareCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/SdkNGShareCompat;->shareFinished(Z)V

    return-void
.end method
