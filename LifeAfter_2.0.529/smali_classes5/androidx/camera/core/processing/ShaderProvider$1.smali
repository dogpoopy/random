.class Landroidx/camera/core/processing/ShaderProvider$1;
.super Ljava/lang/Object;
.source "ShaderProvider.java"

# interfaces
.implements Landroidx/camera/core/processing/ShaderProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/processing/ShaderProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFragmentShader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/camera/core/processing/ShaderProvider$-CC;->$default$createFragmentShader(Landroidx/camera/core/processing/ShaderProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
