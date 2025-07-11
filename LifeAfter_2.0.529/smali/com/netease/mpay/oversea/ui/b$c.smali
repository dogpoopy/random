.class public Lcom/netease/mpay/oversea/ui/b$c;
.super Ljava/lang/Object;
.source "AdapterViewData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/ui/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/netease/mpay/oversea/ui/b$c;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/b$c;->b:Landroid/graphics/drawable/Drawable;

    .line 4
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/b$c;->a:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/netease/mpay/oversea/ui/b$c;->c:I

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/b$c;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/b$c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/mpay/oversea/ui/b$c;->c:I

    return v0
.end method
