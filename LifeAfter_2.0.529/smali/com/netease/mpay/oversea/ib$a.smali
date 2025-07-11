.class Lcom/netease/mpay/oversea/ib$a;
.super Ljava/lang/Object;
.source "UniGuestModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ib;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ib;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ib;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ib$a;->a:Lcom/netease/mpay/oversea/ib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ib$a;->a:Lcom/netease/mpay/oversea/ib;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ib;->d()V

    return-void
.end method
