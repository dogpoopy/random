.class final Lcom/netease/ntunisdk/base/SdkBase$6;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->querySkuDetailsDone(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic c:Lcom/netease/ntunisdk/base/SdkBase;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/util/List;)V
    .locals 0

    .line 6726
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$6;->c:Lcom/netease/ntunisdk/base/SdkBase;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/SdkBase$6;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 6729
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$6;->c:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SdkBase;->z(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnQuerySkuDetailsListener;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase$6;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/OnQuerySkuDetailsListener;->querySkuDetailsFinished(Ljava/util/List;)V

    return-void
.end method
