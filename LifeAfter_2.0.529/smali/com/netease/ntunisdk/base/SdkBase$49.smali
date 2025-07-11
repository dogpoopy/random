.class final Lcom/netease/ntunisdk/base/SdkBase$49;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->ntUpdateAchievement(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/netease/ntunisdk/base/SdkBase;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;I)V
    .locals 0

    .line 7853
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$49;->c:Lcom/netease/ntunisdk/base/SdkBase;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/SdkBase$49;->a:Ljava/lang/String;

    iput p3, p0, Lcom/netease/ntunisdk/base/SdkBase$49;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 7856
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$49;->c:Lcom/netease/ntunisdk/base/SdkBase;

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

    .line 7857
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase$49;->c:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v2, v2, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 7858
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase$49;->a:Ljava/lang/String;

    iget v3, p0, Lcom/netease/ntunisdk/base/SdkBase$49;->b:I

    invoke-virtual {v1, v2, v3}, Lcom/netease/ntunisdk/base/SdkBase;->updateAchievement(Ljava/lang/String;I)V

    goto :goto_0

    .line 7860
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$49;->c:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase$49;->a:Ljava/lang/String;

    iget v2, p0, Lcom/netease/ntunisdk/base/SdkBase$49;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/base/SdkBase;->updateAchievement(Ljava/lang/String;I)V

    return-void
.end method
