.class public final synthetic LX/2b5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic A00:LX/26d;


# direct methods
.method public synthetic constructor <init>(LX/26d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/2b5;->A00:LX/26d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LX/2b5;->A00:LX/26d;

    invoke-virtual {v0}, LX/26d;->A03()V

    return-void
.end method
