.class Lcom/netease/mpay/oversea/t6$a;
.super Ljava/lang/Object;
.source "NotchImplAndroidP.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/t6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/Window;

.field private c:[Lcom/netease/mpay/oversea/s6$a;

.field final synthetic d:Lcom/netease/mpay/oversea/t6;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/t6;Landroid/content/Context;Landroid/view/Window;[Lcom/netease/mpay/oversea/s6$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/t6$a;->d:Lcom/netease/mpay/oversea/t6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/netease/mpay/oversea/t6$a;->a:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lcom/netease/mpay/oversea/t6$a;->b:Landroid/view/Window;

    .line 4
    iput-object p4, p0, Lcom/netease/mpay/oversea/t6$a;->c:[Lcom/netease/mpay/oversea/s6$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/t6$a;->d:Lcom/netease/mpay/oversea/t6;

    iget-object v1, p0, Lcom/netease/mpay/oversea/t6$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/mpay/oversea/t6$a;->b:Landroid/view/Window;

    iget-object v3, p0, Lcom/netease/mpay/oversea/t6$a;->c:[Lcom/netease/mpay/oversea/s6$a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/oversea/s6;->b(Landroid/content/Context;Landroid/view/Window;[Lcom/netease/mpay/oversea/s6$a;)V

    return-void
.end method
