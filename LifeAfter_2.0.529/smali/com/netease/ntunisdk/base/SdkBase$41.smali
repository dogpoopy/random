.class final Lcom/netease/ntunisdk/base/SdkBase$41;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->ntSetUsePushNotification(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/netease/ntunisdk/base/SdkBase;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;Z)V
    .locals 0

    .line 7670
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$41;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iput-boolean p2, p0, Lcom/netease/ntunisdk/base/SdkBase$41;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 7673
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$41;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iget-boolean v1, p0, Lcom/netease/ntunisdk/base/SdkBase$41;->a:Z

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->setUsePushNotification(Z)V

    return-void
.end method
