.class final Lcom/netease/ntunisdk/base/SdkBase$2;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/utils/HTTPCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/base/SdkBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/SdkBase;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;I)V
    .locals 0

    .line 1508
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$2;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iput p2, p0, Lcom/netease/ntunisdk/base/SdkBase$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final processResult(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1511
    iget-object p2, p0, Lcom/netease/ntunisdk/base/SdkBase$2;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object p2, p2, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    if-eqz p2, :cond_0

    .line 1512
    iget-object p2, p0, Lcom/netease/ntunisdk/base/SdkBase$2;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object p2, p2, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    new-instance v0, Lcom/netease/ntunisdk/base/SdkBase$2$1;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/base/SdkBase$2$1;-><init>(Lcom/netease/ntunisdk/base/SdkBase$2;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
