.class final Lcom/netease/ntunisdk/base/SdkBase$92;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->openExitViewFailed()V
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

    .line 3155
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$92;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 3158
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$92;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SdkBase;->n(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnExitListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/OnExitListener;->onOpenExitViewFailed()V

    return-void
.end method
