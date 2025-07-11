.class final Lcom/netease/ntunisdk/base/SdkBase$84;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->logoutDone(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:Lcom/netease/ntunisdk/base/SdkBase;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;I)V
    .locals 0

    .line 3034
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$84;->c:Lcom/netease/ntunisdk/base/SdkBase;

    iput p2, p0, Lcom/netease/ntunisdk/base/SdkBase$84;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 3037
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$84;->c:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SdkBase;->k(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnLogoutDoneListener;

    move-result-object v0

    iget v1, p0, Lcom/netease/ntunisdk/base/SdkBase$84;->a:I

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/OnLogoutDoneListener;->logoutDone(I)V

    return-void
.end method
