.class Lcom/netease/ntunisdk/SdkNGShareCompat$1;
.super Ljava/lang/Object;
.source "SdkNGShareCompat.java"

# interfaces
.implements Lcom/netease/ntunisdk/FloatingButtonUtil$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkNGShareCompat;->doShare(Lcom/netease/ntunisdk/base/ShareInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkNGShareCompat;

.field final synthetic val$shareInfo:Lcom/netease/ntunisdk/base/ShareInfo;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkNGShareCompat;Lcom/netease/ntunisdk/base/ShareInfo;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$1;->this$0:Lcom/netease/ntunisdk/SdkNGShareCompat;

    iput-object p2, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$1;->val$shareInfo:Lcom/netease/ntunisdk/base/ShareInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done()V
    .locals 5

    .line 228
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$1;->this$0:Lcom/netease/ntunisdk/SdkNGShareCompat;

    invoke-static {v1}, Lcom/netease/ntunisdk/SdkNGShareCompat;->access$100(Lcom/netease/ntunisdk/SdkNGShareCompat;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 229
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 230
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$1;->this$0:Lcom/netease/ntunisdk/SdkNGShareCompat;

    invoke-static {v1}, Lcom/netease/ntunisdk/SdkNGShareCompat;->access$300(Lcom/netease/ntunisdk/SdkNGShareCompat;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/netease/ntunisdk/SdkNGShareCompat$1$1;

    invoke-direct {v2, p0, v0}, Lcom/netease/ntunisdk/SdkNGShareCompat$1$1;-><init>(Lcom/netease/ntunisdk/SdkNGShareCompat$1;Landroid/app/ProgressDialog;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
