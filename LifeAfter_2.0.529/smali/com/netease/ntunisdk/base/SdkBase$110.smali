.class final Lcom/netease/ntunisdk/base/SdkBase$110;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->ntGuestBind()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/SdkBase;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;)V
    .locals 0

    .line 5003
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$110;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 5006
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$110;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/SdkBase;->hasGuestLogined()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5007
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$110;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    const-string v1, "ngguest"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/SdkBase;->guestBind()V

    return-void

    .line 5009
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$110;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/SdkBase;->guestBind()V

    return-void
.end method
