.class public Lcom/netease/mpay/oversea/y0;
.super Lcom/netease/mpay/oversea/a9;
.source "CodeVerifyResponse.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/a9;-><init>()V

    .line 2
    iput p1, p0, Lcom/netease/mpay/oversea/y0;->c:I

    .line 3
    iput-object p2, p0, Lcom/netease/mpay/oversea/y0;->a:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/netease/mpay/oversea/y0;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/netease/mpay/oversea/y0;->d:Ljava/lang/String;

    return-void
.end method
