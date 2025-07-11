.class Lcom/netease/ntunisdk/base/SDKManager$6;
.super Ljava/lang/Object;
.source "SDKManager.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/OnExtendFuncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SDKManager;->setExtendFuncCallback(Lcom/netease/ntunisdk/base/callback/ExtendFuncCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/SDKManager;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SDKManager;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SDKManager$6;->a:Lcom/netease/ntunisdk/base/SDKManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtendFuncCall(Ljava/lang/String;)V
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SDKManager$6;->a:Lcom/netease/ntunisdk/base/SDKManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SDKManager;->access$500(Lcom/netease/ntunisdk/base/SDKManager;)Lcom/netease/ntunisdk/base/callback/ExtendFuncCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SDKManager$6;->a:Lcom/netease/ntunisdk/base/SDKManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SDKManager;->access$500(Lcom/netease/ntunisdk/base/SDKManager;)Lcom/netease/ntunisdk/base/callback/ExtendFuncCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/callback/ExtendFuncCallback;->onFuncCalled(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
