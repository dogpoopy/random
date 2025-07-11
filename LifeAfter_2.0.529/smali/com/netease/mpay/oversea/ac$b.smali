.class public Lcom/netease/mpay/oversea/ac$b;
.super Ljava/lang/Object;
.source "UserInfoResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/ac$b;->a:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lcom/netease/mpay/oversea/ac$b;->b:Z

    .line 4
    iput p3, p0, Lcom/netease/mpay/oversea/ac$b;->c:I

    return-void
.end method
