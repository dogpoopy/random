.class final Lcom/netease/ntunisdk/base/SdkBase$85;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->onReceivedNotificationDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netease/ntunisdk/base/SdkBase;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;)V
    .locals 0

    .line 3062
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$85;->c:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 3065
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$85;->c:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SdkBase;->l(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnReceiveMsgListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/OnReceiveMsgListener;->onReceivedNotification()V

    return-void
.end method
