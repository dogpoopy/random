.class final Lcom/netease/ntunisdk/base/SdkBase$28;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->ntShowRewardView(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/netease/ntunisdk/base/SdkBase;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/util/List;)V
    .locals 0

    .line 7430
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$28;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/SdkBase$28;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 7433
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$28;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase$28;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->showRewardView(Ljava/util/List;)V

    return-void
.end method
