.class final Lcom/netease/ntunisdk/base/SdkBase$38;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->ntSendLocalNotification(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/SdkBase;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;)V
    .locals 0

    .line 7602
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$38;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/SdkBase$38;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 7605
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$38;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase$38;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->sendLocalNotification(Ljava/lang/String;)V

    return-void
.end method
