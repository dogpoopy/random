.class Lcom/netease/ntunisdk/SdkNGShareCompat$1$1;
.super Ljava/lang/Object;
.source "SdkNGShareCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkNGShareCompat$1;->done()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/ntunisdk/SdkNGShareCompat$1;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkNGShareCompat$1;Landroid/app/ProgressDialog;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$1$1;->this$1:Lcom/netease/ntunisdk/SdkNGShareCompat$1;

    iput-object p2, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$1$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$1$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 234
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$1$1;->this$1:Lcom/netease/ntunisdk/SdkNGShareCompat$1;

    iget-object v0, v0, Lcom/netease/ntunisdk/SdkNGShareCompat$1;->this$0:Lcom/netease/ntunisdk/SdkNGShareCompat;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$1$1;->this$1:Lcom/netease/ntunisdk/SdkNGShareCompat$1;

    iget-object v1, v1, Lcom/netease/ntunisdk/SdkNGShareCompat$1;->val$shareInfo:Lcom/netease/ntunisdk/base/ShareInfo;

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/SdkNGShareCompat;->access$200(Lcom/netease/ntunisdk/SdkNGShareCompat;Lcom/netease/ntunisdk/base/ShareInfo;)V

    return-void
.end method
