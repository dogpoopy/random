.class final Lcom/netease/ntunisdk/base/SdkBase$69;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->ntVerifyMobile(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:Lcom/netease/ntunisdk/base/SdkBase;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;I)V
    .locals 0

    .line 8397
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$69;->c:Lcom/netease/ntunisdk/base/SdkBase;

    iput p2, p0, Lcom/netease/ntunisdk/base/SdkBase$69;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 8400
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$69;->c:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8401
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase$69;->c:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v2, v2, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 8402
    iget v2, p0, Lcom/netease/ntunisdk/base/SdkBase$69;->a:I

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/base/SdkBase;->verifyMobile(I)V

    goto :goto_0

    .line 8404
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$69;->c:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8405
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase$69;->c:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v2, v2, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 8406
    iget v2, p0, Lcom/netease/ntunisdk/base/SdkBase$69;->a:I

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/base/SdkBase;->verifyMobile(I)V

    goto :goto_1

    .line 8408
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$69;->c:Lcom/netease/ntunisdk/base/SdkBase;

    iget v1, p0, Lcom/netease/ntunisdk/base/SdkBase$69;->a:I

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->verifyMobile(I)V

    return-void
.end method
