.class public Lcom/netease/mpay/oversea/a3$a;
.super Ljava/lang/Object;
.source "ExLoginData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/a3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/a3$a;->a:Z

    .line 3
    iput v0, p0, Lcom/netease/mpay/oversea/a3$a;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/netease/mpay/oversea/q3;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget-boolean v0, p1, Lcom/netease/mpay/oversea/q3;->K:Z

    iput-boolean v0, p0, Lcom/netease/mpay/oversea/a3$a;->a:Z

    .line 6
    iget p1, p1, Lcom/netease/mpay/oversea/q3;->L:I

    iput p1, p0, Lcom/netease/mpay/oversea/a3$a;->b:I

    return-void
.end method
