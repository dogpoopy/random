.class final Lcom/netease/ntunisdk/base/SdkBase$157;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->finishLoginDone(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/netease/ntunisdk/base/SdkBase;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;I)V
    .locals 0

    .line 1471
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$157;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iput p2, p0, Lcom/netease/ntunisdk/base/SdkBase$157;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1474
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$157;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iget v1, p0, Lcom/netease/ntunisdk/base/SdkBase$157;->a:I

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->a(Lcom/netease/ntunisdk/base/SdkBase;I)V

    return-void
.end method
