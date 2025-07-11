.class final Lcom/netease/ntunisdk/base/SdkBase$88;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->onEnterGameDone(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/SdkBase;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3097
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$88;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/SdkBase$88;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/ntunisdk/base/SdkBase$88;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 3100
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$88;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SdkBase;->l(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnReceiveMsgListener;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase$88;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase$88;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/OnReceiveMsgListener;->onEnterGame(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
