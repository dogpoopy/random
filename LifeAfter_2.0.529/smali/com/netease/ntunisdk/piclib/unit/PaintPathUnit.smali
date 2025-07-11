.class public Lcom/netease/ntunisdk/piclib/unit/PaintPathUnit;
.super Ljava/lang/Object;
.source "PaintPathUnit.java"


# instance fields
.field public paint:Landroid/graphics/Paint;

.field public path:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p1",
            "p2"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/unit/PaintPathUnit;->path:Landroid/graphics/Path;

    .line 9
    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/unit/PaintPathUnit;->paint:Landroid/graphics/Paint;

    return-void
.end method
