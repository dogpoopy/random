.class public Lcom/netease/mpay/oversea/ac$a;
.super Ljava/lang/Object;
.source "UserInfoResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/netease/mpay/oversea/ac$a;->a:I

    .line 3
    iput-object p2, p0, Lcom/netease/mpay/oversea/ac$a;->b:Ljava/lang/String;

    return-void
.end method
