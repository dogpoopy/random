.class Lcom/netease/ntunisdk/SdkNGShareCompat$GetFileUriAsyncTask$1;
.super Ljava/lang/Object;
.source "SdkNGShareCompat.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkNGShareCompat$GetFileUriAsyncTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkNGShareCompat$GetFileUriAsyncTask;

.field final synthetic val$inst:Lcom/netease/ntunisdk/SdkNGShareCompat;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkNGShareCompat$GetFileUriAsyncTask;Lcom/netease/ntunisdk/SdkNGShareCompat;)V
    .locals 0

    .line 630
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$GetFileUriAsyncTask$1;->this$0:Lcom/netease/ntunisdk/SdkNGShareCompat$GetFileUriAsyncTask;

    iput-object p2, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$GetFileUriAsyncTask$1;->val$inst:Lcom/netease/ntunisdk/SdkNGShareCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "UniSDK share_compat"

    const-string v0, "onCancel"

    .line 633
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$GetFileUriAsyncTask$1;->this$0:Lcom/netease/ntunisdk/SdkNGShareCompat$GetFileUriAsyncTask;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/SdkNGShareCompat$GetFileUriAsyncTask;->access$1002(Lcom/netease/ntunisdk/SdkNGShareCompat$GetFileUriAsyncTask;Z)Z

    .line 635
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$GetFileUriAsyncTask$1;->this$0:Lcom/netease/ntunisdk/SdkNGShareCompat$GetFileUriAsyncTask;

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/SdkNGShareCompat$GetFileUriAsyncTask;->cancel(Z)Z

    .line 636
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$GetFileUriAsyncTask$1;->val$inst:Lcom/netease/ntunisdk/SdkNGShareCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/SdkNGShareCompat;->shareFinished(Z)V

    return-void
.end method
