.class final Lcom/netease/ntunisdk/base/SdkBase$a$1;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase$a;->processResult(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/OrderInfo;

.field final synthetic b:Lcom/netease/ntunisdk/base/SdkBase$a;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase$a;Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0

    .line 2620
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$a$1;->b:Lcom/netease/ntunisdk/base/SdkBase$a;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/SdkBase$a$1;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2623
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$a$1;->b:Lcom/netease/ntunisdk/base/SdkBase$a;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/SdkBase$a;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SdkBase;->i(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnOrderCheckListener;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase$a$1;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/OnOrderCheckListener;->orderConsumeDone(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void
.end method
