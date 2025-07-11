.class public Lcom/netease/mpay/oversea/q3$g;
.super Ljava/lang/Object;
.source "GameConfigResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/q3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/q3$g;->b:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/netease/mpay/oversea/q3$g;->c:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/netease/mpay/oversea/q3$g;->d:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/netease/mpay/oversea/q3$g;->e:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/netease/mpay/oversea/q3$g;->a:Ljava/lang/String;

    .line 7
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p0, Lcom/netease/mpay/oversea/q3$g;->f:Z

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/netease/mpay/oversea/q3$g;->g:Z

    return-void
.end method
