.class Lcom/netease/mpay/oversea/n0$b;
.super Ljava/lang/Object;
.source "BoltrendStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/n0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/netease/mpay/oversea/n0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/n0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netease/mpay/oversea/n0;-><init>(Lcom/netease/mpay/oversea/n0$a;)V

    sput-object v0, Lcom/netease/mpay/oversea/n0$b;->a:Lcom/netease/mpay/oversea/n0;

    return-void
.end method

.method static synthetic a()Lcom/netease/mpay/oversea/n0;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/n0$b;->a:Lcom/netease/mpay/oversea/n0;

    return-object v0
.end method
